# FOR NON-CORE STORIES ONLY
require 'pry'
require "spec_helper"
require_relative "../../models/magical_creature.rb"

RSpec.describe MagicalCreature do
  let(:creature) { MagicalCreature.new('bunny','can eat some carrots. I guess', 1)}

  it "it should return an object of class MagicalCreature" do
    expect(creature).to be_a(MagicalCreature)
  end

  it "should have an age" do
    expect(creature.age).to be(1)
  end

  it "should not have an age setter" do
    expect{creature.age = 12}.to raise_error(NoMethodError)
  end

  it "should have a name" do
    expect(creature.name).to eq('bunny')
  end

  it "should not have a name setter" do
    expect{creature.name = "tony robbins"}.to raise_error(NoMethodError)
  end

  it "should have an ability" do
    expect(creature.magicalAbility).to eq('can eat some carrots. I guess')
  end

  it "should not have an ability setter" do
    expect{creature.magicalAbility = "washing dishes"}.to raise_error(NoMethodError)
  end
end
