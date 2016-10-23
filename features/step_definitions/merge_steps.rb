And /^the following articles are present:$/ do |table|
    Article.create table.hashes
end

And /^the following comments are present:$/ do |table|
    Comment.create table.hashes    
end

Then /^I should not see merge_with field$/ do
   if page.respond_to? :should
    page.should have_no_xpath('//input[id=merge_with]')
  else
    assert page.has_no_xpath?('//input[id=merge_with]')
  end
end

Then /^I should see merge_with field$/ do
   if page.respond_to? :should
    page.should have_xpath('//input[id=merge_with]')
  else
    assert page.has_xpath?('//input[id=merge_with]')
  end
end

And /^the article id for "(.*)" should be "(.*)"$/ do |article, id|
  article_id = Article.find_by_title(article).id.to_s
  if article_id.respond_to? :should
    article_id.should == id
  else
    assert_equal article_id, id
  end
end