package
{
    import com.leedostudios.meta.MetaUtil;

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
            var m:MetaUtil = new MetaUtil();
            m.addProcessor("Create",new CreateProcessor());

            var t:TestClass = new TestClass();
            m.process(t);
        }
    }
}
