class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    @array = ["Hello", "Lorem ipsum", "World"]

    self.contentView = resources.getIdentifier('main', 'layout', 'com.gdurelle.simplelist')

    @list = findViewById(R::Id::Mainlist)
    @list.adapter = adapter(@array)

    @button = findViewById(R::Id::Mainbutton)
    @button.onClickListener = self
  end

  # onClick defines action for onClickListener
  def onClick(view)
    input = findViewById(R::Id::Textinput)
    text = input.text
    @array << text
    # FIXME: @list.adapter.notifyDataSetChanged()
    # @list.adapter.notify_data_set_change DOES NOT work either.
    @list.adapter = adapter(@array)
    input.setText('')
  end

  def adapter(array)
    Android::Widget::ArrayAdapter.new(self,
                                      Android::R::Layout::Simple_list_item_1,
                                      array
                                      )
  end
end
