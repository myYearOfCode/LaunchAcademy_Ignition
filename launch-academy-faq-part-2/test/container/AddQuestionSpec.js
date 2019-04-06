import AddQuestion from '../../src/components/AddQuestion'
import FormElement from '../../src/components/FormElement'

describe("AddQuestion", () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <AddQuestion
      />
    )
  })

  it('should have a blank state', () => {
    expect(wrapper.state()).toEqual({
      answer: "",
      question: ""
    })
  })

  it('should render at least one FormElement Components', () => {
    expect(wrapper.find(FormElement)).toBePresent()
  })

  it('should update input fields based on state', () => {
    wrapper.setState({answer: "thisistheanswer"})
    expect(wrapper.find('input').nodes[1].value).toEqual('thisistheanswer')
  })

  it('should update input fields based on state', () => {
    wrapper.setState({answer: "thisistheanswer"})
    expect(wrapper.find(FormElement)).toBePresent()
    console.log(wrapper.find(FormElement).debug())
    // debugger
    // expect(wrapper.find(FormElement).nodes[1].value).toEqual('thisistheanswer')
    // expect(wrapper.find(FormElement)).toBePresent
  })

})
