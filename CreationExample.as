package
{
    import com.leedostudios.metadata.create;

    import flash.display.Sprite;

    /**
     * Simple example of metadata driven instantiation and
     * display list adding techniques
     */
    [SWF(height=200,width=200)]
    public class CreationExample extends Sprite
    {
        public function CreationExample()
        {
            var testClassInstance:TestClass = create(TestClass);
        }
    }
}
