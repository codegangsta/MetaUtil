package com.leedostudios.meta.processors
{
    import com.leedostudios.meta.IMeta;
    import com.leedostudios.meta.IMetaProcessor;

    import flash.utils.getDefinitionByName;


    /**
     * The create processor will run a create call on the creator
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
                instance = _creator.process(getDefinitionByName(arguments["asClass"]) as Class);
            else
                instance = _creator.process(propertyType);

            target[property] = instance;
        }

        public function onAdd(creator:IMeta):void
        {
            _creator = creator;
        }

        //_____________________________________________________________________
        //	Protected Properties
        //_____________________________________________________________________
        protected var _creator:IMeta;
    }
}
