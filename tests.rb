require 'minitest/autorun'
load './app.rb'

class Tests < Minitest::Unit::TestCase
    def setup
        @data = JSON.load(File.open('./champions_data.json'))
    end

    def test_champions_names
        File.open('./answers/champions_names.json') do |f|
            expected = JSON.load f
            received = champions_names(@data)
            assert_equal expected, received
        end
    end

    def test_champions_titles
        File.open('./answers/champions_titles.json') do |f|
            expected = JSON.load f
            received = champions_titles(@data)
            assert_equal expected, received
        end
    end

    def test_champions_difficuties
        File.open('./answers/champions_difficulties.json') do |f|
            expected = JSON.load f
            received = champions_difficulties(@data)
            assert_equal expected, received
        end
    end

    def test_tank_champions
        File.open('./answers/tank_champions.json') do |f|
            expected = JSON.load f
            received = tank_champions(@data)
            assert_equal expected, received
        end
    end

    def test_champions_with_hp_above_630
        File.open('./answers/champions_with_hp_above_630.json') do |f|
            expected = JSON.load f
            received = champions_with_hp_above(@data, '630')
            assert_equal expected, received
        end
    end
end

