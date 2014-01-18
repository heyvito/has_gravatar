require 'digest/md5'

module HasGravatar
  module Extensions
    extend ActiveSupport::Concern
    module ClassMethods
      def has_gravatar *fields
        fields.each do |field|
          method_name = "#{field}_gravatar".to_sym
          self.send :define_method, method_name do |*args|
            protocol = '://'
            default_url = nil
            size = nil
            if args.is_a?(Array) && args.size == 1 && args[0].is_a?(Hash) then
              args = args[0]
              protocol = 's://secure.' if args.has_key?(:secure) && args[:secure] == true
              # From: ERB library (http://rdoc.info/stdlib/erb/1.8.7/ERB/Util%3aurl_encode)
              default_url = 'd=' << args[:default_avatar].to_s.gsub(/[^a-zA-Z0-9_\-.]/n){ sprintf("%%%02X", $&.unpack("C")[0]) } if args.has_key? :default_avatar
              size = 's=' << args[:size].to_s if args.has_key? :size
            end
            hash = Digest::MD5.hexdigest(self.send field.to_sym)
            suffix = [default_url, size].reject! {|item| item == nil || item.empty? }.join('&')
            suffix = '?' << suffix unless suffix.empty?
            
            "http#{protocol}gravatar.com/avatar/#{hash}#{suffix}"
          end
        end
      end
    end
  end
end