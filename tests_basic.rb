require 'minitest/autorun'
require 'json'
load 'basic.rb' # TODO mudar para 'basic.rb'

class TestsBasic < Minitest::Unit::TestCase
    def setup
        @data = JSON.load(File.open('./answers/basic_answers.json'))
        @basic = Basic.new
    end

    def run_test test_method
        return if @data[test_method].nil?

        @data[test_method].each do |test_case|
            assert_equal test_case['ans'], @basic.send(test_method, *test_case['args']), "\nFuncao testada: \"#{test_method}\". Input utilizado: #{test_case['args']}\n"
        end
    end

    def test_all
        Basic.public_instance_methods.each do |method|
            run_test method.to_s
        end
    end
end