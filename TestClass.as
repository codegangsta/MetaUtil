package
{
    public class TestClass
    {
        [Inject]
        [Create]
        [Instantiate]
        public var test:Object;
        [Inject]
        [Add(to="test")]
        public var test2:Object;
        [Inject]
        public var test3:Object;

        public var test4:Object;

        public function TestClass()
        {
        }
    }
}
