
class Dog extends Component {
    render() {
        let name = props.name
        return (
            <div class= 'decoratedBox'>
                <p class='padding'>{name}</p>
            </div>
        )
    }
}