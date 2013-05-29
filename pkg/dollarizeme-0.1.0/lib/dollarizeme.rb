module Dollarizeme

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods

    def dollarizeme(*names)
      names.each do |name|
        define_method "#{name}_oficial" do
          read_attribute(name).to_f / Dollar.find(:first, :params => {:dollar_type => 1}).buyer
        end

        define_method "#{name}_blue" do
          read_attribute(name).to_f / Dollar.find(:first, :params => {:dollar_type => 2}).buyer
        end

        define_method "#{name}_green" do
          read_attribute(name).to_f / Dollar.find(:first, :params => {:dollar_type => 3}).buyer
        end

        define_method "#{name}_gold" do
          read_attribute(name).to_f / Dollar.find(:first, :params => {:dollar_type => 4}).buyer
        end

        define_method "#{name}_colonia" do
          read_attribute(name).to_f / Dollar.find(:first, :params => {:dollar_type => 5}).buyer
        end

        define_method "#{name}_miami" do
          read_attribute(name).to_f / Dollar.find(:first, :params => {:dollar_type => 6}).buyer
        end

      end
    end


  end
end

class ActiveRecord::Base
  include Dollarizeme
end