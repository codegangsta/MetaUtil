package com.leedostudios.metadata
{
    /**
     * IMetaProcessor will process a metadata tag
     */
    public interface IMetaProcessor
    {
        /**
         * Executes the metadata that the <code>IMetaProcessor<code/>
         * is registered for in the <code>ICreator</code> implementations
         *
         * @param target the target object ot be manipulated
         * @param property the property on the object which the metadata is placed
         * @param arguments the arguments object inside the metadata tag
         */
        function execute(target:Object,property:String,arguments:Object):void
    }
}
