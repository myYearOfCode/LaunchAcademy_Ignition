import FormElement from '../../src/components/FormElement'

describe('FormElement', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <FormElement
        name="nametext"
        label="labeltext"
        value="testvalue"
      />
    )
  })

  it('should render an input field with a label', () => {
    expect(wrapper.find('label')).toBePresent()
    expect(wrapper.find('label').text()).toEqual('nametext')
  })




})
