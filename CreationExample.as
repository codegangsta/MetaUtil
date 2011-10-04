package
{
    import com.leedostudios.meta.Meta;

    import com.leedostudios.meta.processors.CreateProcessor;

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
            var m:Meta = new Meta();
            m.addProcessor("Create",new CreateProcessor());

            m.process(new TestClass());
        }
    }
}
