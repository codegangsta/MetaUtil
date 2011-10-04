package com.leedostudios.meta.processors
{
    import com.leedostudios.meta.IMeta;
    import com.leedostudios.meta.IMetaProcessor;

    import flash.utils.getDefinitionByName;


    /**
     * The create processor will run a create call on the meta property
     */
    public class CreateProcessor implements IMetaProcessor
    {
        //_____________________________________________________________________
        //	IMetaProcessor Implementation
        //_____________________________________________________________________
        public function execute(target:Object, property:String, propertyType:Class, arguments:Object):void
        {
            var instance:Object;

            if(arguments["asClass"])
            {
                var clazz:Class = getDefinitionByName(arguments["asClass"]) as Class;
                instance = new clazz();
            }
            else
            {
                instance = new propertyType();
            }
            
            _meta.process(instance);

            target[property] = instance;
        }

        public function onAdd(meta:IMeta):void
        {
            _meta = meta;
        }

        //_____________________________________________________________________
        //	Protected Properties
        //_____________________________________________________________________
        protected var _meta:IMeta;
    }
}
