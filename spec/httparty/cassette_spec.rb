describe 'Cassette', :cassette do
    it 'Save in cassette' do
        VCR.use_cassette("jsonplaceholder/posts") do
            response = HTTParty.get("https://jsonplaceholder.typicode.com/posts")
            content_type = response.headers['content-type'] 
            expect(content_type).to match(/application\/json/)       
        end
    end
end