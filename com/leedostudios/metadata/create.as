package com.leedostudios.metadata
{
    public function create(clazz:Class)
    {
        return CentralCreator.creator.create(clazz);
    }
}

import com.leedostudios.metadata.Creator;
import com.leedostudios.metadata.ICreator;

internal class CentralCreator
{
    public static const creator:ICreator = new Creator();
}
