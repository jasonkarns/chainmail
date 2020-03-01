#TODO
# - able to be extended
# - able to be used without extending (module_function)
# - variant that returns nil instead of self
#
module ChainMail
  module Chainable
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def chainable(*methods)
        methods.each do |method|
          original = instance_method(method)
          define_method method do |*args|
            original.bind(self).call(*args)
            self
          end
        end
      end
    end


  end
end
#
#https://github.com/rkh/chainable/blob/master/lib/chainable.rb
#https://github.com/oleander/acts_as_chain
#https://github.com/kstephens/module_chain_method/blob/master/lib/module/chain_method.rb
#https://github.com/benschwarz/attr-chain
#
