.class public Lorg/apache/commons/compress/harmony/unpack200/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field public static final LOG_LEVEL_QUIET:I = 0x0

.field public static final LOG_LEVEL_STANDARD:I = 0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2


# instance fields
.field private attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

.field private bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

.field private classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

.field private classFilesContents:[[B

.field private cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field private deflateHint:Z

.field private doPreRead:Z

.field private fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

.field private fileDeflate:[Z

.field private fileIsClass:[Z

.field private header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

.field private icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

.field private internalBuffer:Ljava/io/InputStream;

.field private logLevel:I

.field private logStream:Ljava/io/PrintWriter;

.field private overrideDeflateHint:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildClassFile(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    .locals 36
    .param p1, "classNum"    # I

    .line 111
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;-><init>()V

    .line 112
    .local v1, "classFile":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassVersionMajor()[I

    move-result-object v2

    .line 113
    .local v2, "major":[I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassVersionMinor()[I

    move-result-object v3

    .line 114
    .local v3, "minor":[I
    if-eqz v2, :cond_0

    .line 115
    aget v4, v2, p1

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->major:I

    .line 116
    aget v4, v3, p1

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->minor:I

    goto :goto_0

    .line 118
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMajorVersion()I

    move-result v4

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->major:I

    .line 119
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMinorVersion()I

    move-result v4

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->minor:I

    .line 122
    :goto_0
    iget-object v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 123
    .local v4, "cp":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v5

    aget v5, v5, p1

    .line 124
    .local v5, "fullNameIndexInCpClass":I
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    .line 126
    .local v6, "fullName":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 131
    .local v7, "i":I
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassAttributes()[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v9, v9, p1

    .line 132
    .local v9, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v10, 0x0

    .line 133
    .local v10, "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 134
    .local v12, "classAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->isSourceFileAttribute()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 135
    move-object v10, v12

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    .line 137
    .end local v12    # "classAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_1
    goto :goto_1

    .line 139
    :cond_2
    const/4 v11, -0x1

    const/4 v12, 0x0

    if-nez v10, :cond_7

    .line 142
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v13

    .line 143
    const-string v14, "SourceFile"

    invoke-virtual {v13, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v13

    .line 144
    .local v13, "SOURCE_FILE":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getRawClassFlags()[J

    move-result-object v14

    move-object/from16 v16, v9

    .end local v9    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v16, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-wide v8, v14, p1

    invoke-virtual {v13, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 145
    const/4 v8, -0x1

    .line 146
    .local v8, "firstDollar":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_4

    .line 147
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x24

    if-gt v14, v15, :cond_3

    .line 148
    move v8, v9

    .line 146
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 151
    .end local v9    # "index":I
    :cond_4
    const/4 v9, 0x0

    .line 153
    .local v9, "fileName":Ljava/lang/String;
    const-string v14, ".java"

    if-le v8, v11, :cond_5

    if-gt v7, v8, :cond_5

    .line 154
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 156
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    :goto_3
    new-instance v11, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v14, v9, v12}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v14

    invoke-direct {v11, v14}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    move-object v10, v11

    .line 159
    const/4 v11, 0x1

    new-array v14, v11, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    aput-object v11, v14, v12

    iput-object v14, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 160
    .end local v8    # "firstDollar":I
    .end local v9    # "fileName":Ljava/lang/String;
    goto :goto_4

    .line 161
    :cond_6
    new-array v8, v12, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    iput-object v8, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 163
    .end local v13    # "SOURCE_FILE":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_4
    goto :goto_5

    .line 164
    .end local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v9, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    :cond_7
    move-object/from16 v16, v9

    .end local v9    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v8, 0x1

    new-array v9, v8, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    aput-object v8, v9, v12

    iput-object v9, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 171
    :goto_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v8, "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    .line 173
    move-object/from16 v11, v16

    .end local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v11, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 174
    .local v13, "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->isSourceFileAttribute()Z

    move-result v14

    if-nez v14, :cond_8

    .line 175
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v13    # "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v11

    goto :goto_6

    .end local v11    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    :cond_9
    move-object/from16 v11, v16

    .line 178
    .end local v9    # "index":I
    .end local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v11    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    iget-object v9, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 179
    .local v9, "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    array-length v13, v9

    .line 180
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v13, v14

    new-array v13, v13, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    iput-object v13, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 181
    iget-object v13, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v14, v9

    invoke-static {v9, v12, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_a

    .line 183
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 184
    .local v14, "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v4, v14}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 185
    iget-object v15, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v12, v9

    add-int/2addr v12, v13

    aput-object v14, v15, v12

    .line 182
    .end local v14    # "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_7

    .line 189
    .end local v13    # "index":I
    :cond_a
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v12, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v12

    .line 190
    .local v12, "cfThis":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassSuperInts()[I

    move-result-object v14

    aget v14, v14, p1

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v13

    .line 192
    .local v13, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassInterfacesInts()[[I

    move-result-object v14

    aget-object v14, v14, p1

    array-length v14, v14

    new-array v14, v14, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 193
    .local v14, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v7, 0x0

    :goto_8
    array-length v15, v14

    if-ge v7, v15, :cond_b

    .line 194
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-object/from16 v17, v2

    .end local v2    # "major":[I
    .local v17, "major":[I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassInterfacesInts()[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v7

    invoke-virtual {v15, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v2

    aput-object v2, v14, v7

    .line 193
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    goto :goto_8

    .line 197
    .end local v17    # "major":[I
    .restart local v2    # "major":[I
    :cond_b
    move-object/from16 v17, v2

    .end local v2    # "major":[I
    .restart local v17    # "major":[I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassFieldCount()[I

    move-result-object v2

    aget v2, v2, p1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 199
    .local v2, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v7, 0x0

    :goto_9
    array-length v15, v2

    if-ge v7, v15, :cond_c

    .line 200
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldDescrInts()[[I

    move-result-object v15

    aget-object v15, v15, p1

    aget v15, v15, v7

    .line 201
    .local v15, "descriptorIndex":I
    move-object/from16 v18, v3

    .end local v3    # "minor":[I
    .local v18, "minor":[I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorNameInts()[I

    move-result-object v3

    aget v3, v3, v15

    .line 202
    .local v3, "nameIndex":I
    move/from16 v19, v5

    .end local v5    # "fullNameIndexInCpClass":I
    .local v19, "fullNameIndexInCpClass":I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorTypeInts()[I

    move-result-object v5

    aget v5, v5, v15

    .line 203
    .local v5, "typeIndex":I
    move-object/from16 v20, v8

    .end local v8    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v20, "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v8, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v8

    .line 204
    .local v8, "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v27, v3

    .end local v3    # "nameIndex":I
    .local v27, "nameIndex":I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    .line 205
    .local v3, "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v28, v5

    .end local v5    # "typeIndex":I
    .local v28, "typeIndex":I
    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPField;

    move-object/from16 v29, v9

    .end local v9    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .local v29, "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldFlags()[[J

    move-result-object v9

    aget-object v9, v9, p1

    aget-wide v24, v9, v7

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    .line 206
    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldAttributes()[[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v9, v9, p1

    aget-object v26, v9, v7

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v3

    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPField;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V

    .line 205
    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v5

    aput-object v5, v2, v7

    .line 199
    .end local v3    # "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v8    # "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v15    # "descriptorIndex":I
    .end local v27    # "nameIndex":I
    .end local v28    # "typeIndex":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v29

    goto :goto_9

    .line 209
    .end local v18    # "minor":[I
    .end local v19    # "fullNameIndexInCpClass":I
    .end local v20    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v29    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .local v3, "minor":[I
    .local v5, "fullNameIndexInCpClass":I
    .local v8, "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v9    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_c
    move-object/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v29, v9

    .end local v3    # "minor":[I
    .end local v5    # "fullNameIndexInCpClass":I
    .end local v8    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v9    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .restart local v18    # "minor":[I
    .restart local v19    # "fullNameIndexInCpClass":I
    .restart local v20    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v29    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassMethodCount()[I

    move-result-object v3

    aget v3, v3, p1

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 211
    .local v3, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v5, 0x0

    .end local v7    # "i":I
    .local v5, "i":I
    :goto_a
    array-length v7, v3

    if-ge v5, v7, :cond_d

    .line 212
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodDescrInts()[[I

    move-result-object v7

    aget-object v7, v7, p1

    aget v7, v7, v5

    .line 213
    .local v7, "descriptorIndex":I
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorNameInts()[I

    move-result-object v8

    aget v8, v8, v7

    .line 214
    .local v8, "nameIndex":I
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorTypeInts()[I

    move-result-object v9

    aget v9, v9, v7

    .line 215
    .local v9, "typeIndex":I
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15, v8}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v15

    .line 216
    .local v15, "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v27, v7

    .end local v7    # "descriptorIndex":I
    .local v27, "descriptorIndex":I
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7, v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v7

    .line 217
    .local v7, "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v28, v8

    .end local v8    # "nameIndex":I
    .local v28, "nameIndex":I
    new-instance v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethod;

    move/from16 v30, v9

    .end local v9    # "typeIndex":I
    .local v30, "typeIndex":I
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodFlags()[[J

    move-result-object v9

    aget-object v9, v9, p1

    aget-wide v24, v9, v5

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    .line 218
    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodAttributes()[[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v9, v9, p1

    aget-object v26, v9, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v15

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethod;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V

    .line 217
    invoke-virtual {v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v8

    aput-object v8, v3, v5

    .line 211
    .end local v7    # "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v15    # "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v27    # "descriptorIndex":I
    .end local v28    # "nameIndex":I
    .end local v30    # "typeIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 220
    :cond_d
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addNestedEntries()V

    .line 223
    const/4 v7, 0x0

    .line 224
    .local v7, "addInnerClassesAttr":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getIcLocal()[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v8

    aget-object v8, v8, p1

    .line 225
    .local v8, "icLocal":[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    if-eqz v8, :cond_e

    const/4 v9, 0x1

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    .line 226
    .local v9, "icLocalSent":Z
    :goto_b
    new-instance v15, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;

    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    const-string v5, "InnerClasses"

    invoke-direct {v15, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;-><init>(Ljava/lang/String;)V

    move-object v5, v15

    .line 227
    .local v5, "innerClassesAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    move-result-object v15

    invoke-virtual {v15, v6, v4}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getRelevantIcTuples(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v15

    .line 228
    .local v15, "icRelevant":[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-direct {v0, v8, v15}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->computeIcStored([Lorg/apache/commons/compress/harmony/unpack200/IcTuple;[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)Ljava/util/List;

    move-result-object v22

    .line 229
    .local v22, "ic_stored":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v6

    .end local v6    # "fullName":Ljava/lang/String;
    .local v25, "fullName":Ljava/lang/String;
    move-object/from16 v6, v24

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 230
    .local v6, "icStored":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    move/from16 v24, v7

    .end local v7    # "addInnerClassesAttr":Z
    .local v24, "addInnerClassesAttr":Z
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassIndex()I

    move-result v7

    .line 231
    .local v7, "innerClassIndex":I
    move-object/from16 v26, v10

    .end local v10    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .local v26, "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassIndex()I

    move-result v10

    .line 232
    .local v10, "outerClassIndex":I
    move-object/from16 v27, v11

    .end local v11    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v27, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassNameIndex()I

    move-result v11

    .line 234
    .local v11, "simpleClassNameIndex":I
    move-object/from16 v28, v3

    .end local v3    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v28, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "innerClassString":Ljava/lang/String;
    move-object/from16 v30, v2

    .end local v2    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v30, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "outerClassString":Ljava/lang/String;
    move-object/from16 v31, v14

    .end local v14    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v31, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassName()Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "simpleClassName":Ljava/lang/String;
    const/16 v32, 0x0

    .line 239
    .local v32, "innerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    const/16 v33, 0x0

    .line 240
    .local v33, "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/16 v34, 0x0

    .line 242
    .local v34, "outerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    move-object/from16 v35, v13

    const/4 v13, -0x1

    .end local v13    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v35, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    if-eq v7, v13, :cond_f

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v13, v7}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v13

    goto :goto_d

    :cond_f
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 243
    invoke-virtual {v13, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v13

    :goto_d
    nop

    .line 244
    .end local v32    # "innerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .local v13, "innerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAnonymous()Z

    move-result v32

    if-nez v32, :cond_11

    .line 245
    move-object/from16 v32, v3

    const/4 v3, -0x1

    .end local v3    # "innerClassString":Ljava/lang/String;
    .local v32, "innerClassString":Ljava/lang/String;
    if-eq v11, v3, :cond_10

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3, v11}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    goto :goto_e

    :cond_10
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 246
    invoke-virtual {v3, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    :goto_e
    move-object/from16 v33, v3

    goto :goto_f

    .line 244
    .end local v32    # "innerClassString":Ljava/lang/String;
    .restart local v3    # "innerClassString":Ljava/lang/String;
    :cond_11
    move-object/from16 v32, v3

    .end local v3    # "innerClassString":Ljava/lang/String;
    .restart local v32    # "innerClassString":Ljava/lang/String;
    move-object/from16 v3, v33

    .line 249
    .end local v33    # "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .local v3, "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    :goto_f
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isMember()Z

    move-result v33

    if-eqz v33, :cond_13

    .line 250
    move/from16 v33, v7

    const/4 v7, -0x1

    .end local v7    # "innerClassIndex":I
    .local v33, "innerClassIndex":I
    if-eq v10, v7, :cond_12

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7, v10}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v7

    goto :goto_10

    :cond_12
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 251
    invoke-virtual {v7, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v7

    :goto_10
    move-object/from16 v34, v7

    goto :goto_11

    .line 249
    .end local v33    # "innerClassIndex":I
    .restart local v7    # "innerClassIndex":I
    :cond_13
    move/from16 v33, v7

    .end local v7    # "innerClassIndex":I
    .restart local v33    # "innerClassIndex":I
    move-object/from16 v7, v34

    .line 253
    .end local v34    # "outerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .local v7, "outerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    :goto_11
    move-object/from16 v34, v2

    .end local v2    # "outerClassString":Ljava/lang/String;
    .local v34, "outerClassString":Ljava/lang/String;
    iget v2, v6, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    .line 254
    .local v2, "flags":I
    invoke-virtual {v5, v13, v7, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->addInnerClassesEntry(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    .line 255
    const/4 v7, 0x1

    .line 256
    .end local v2    # "flags":I
    .end local v3    # "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v6    # "icStored":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .end local v10    # "outerClassIndex":I
    .end local v11    # "simpleClassNameIndex":I
    .end local v13    # "innerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .end local v14    # "simpleClassName":Ljava/lang/String;
    .end local v24    # "addInnerClassesAttr":Z
    .end local v32    # "innerClassString":Ljava/lang/String;
    .end local v33    # "innerClassIndex":I
    .end local v34    # "outerClassString":Ljava/lang/String;
    .local v7, "addInnerClassesAttr":Z
    move-object/from16 v6, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v14, v31

    move-object/from16 v13, v35

    goto/16 :goto_c

    .line 259
    .end local v25    # "fullName":Ljava/lang/String;
    .end local v26    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .end local v27    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v28    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v30    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v31    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v35    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v2, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v3, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v6, "fullName":Ljava/lang/String;
    .local v10, "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .local v11, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v13, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v14, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    :cond_14
    move-object/from16 v30, v2

    move-object/from16 v28, v3

    move-object/from16 v25, v6

    move/from16 v24, v7

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v35, v13

    move-object/from16 v31, v14

    .end local v2    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v3    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v6    # "fullName":Ljava/lang/String;
    .end local v7    # "addInnerClassesAttr":Z
    .end local v10    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .end local v11    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v13    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v14    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v24    # "addInnerClassesAttr":Z
    .restart local v25    # "fullName":Ljava/lang/String;
    .restart local v26    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .restart local v27    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v28    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v30    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v31    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v35    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    if-eqz v9, :cond_15

    array-length v2, v8

    if-nez v2, :cond_15

    .line 260
    const/4 v7, 0x0

    .end local v24    # "addInnerClassesAttr":Z
    .restart local v7    # "addInnerClassesAttr":Z
    goto :goto_12

    .line 265
    .end local v7    # "addInnerClassesAttr":Z
    .restart local v24    # "addInnerClassesAttr":Z
    :cond_15
    move/from16 v7, v24

    .end local v24    # "addInnerClassesAttr":Z
    .restart local v7    # "addInnerClassesAttr":Z
    :goto_12
    if-nez v9, :cond_16

    array-length v2, v15

    if-nez v2, :cond_16

    .line 266
    const/4 v7, 0x0

    .line 269
    :cond_16
    if-eqz v7, :cond_17

    .line 272
    iget-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 273
    .local v2, "originalAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    array-length v3, v2

    const/4 v6, 0x1

    add-int/2addr v3, v6

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 274
    .local v3, "newAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    array-length v10, v2

    const/4 v11, 0x0

    invoke-static {v2, v11, v3, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    array-length v10, v3

    sub-int/2addr v10, v6

    aput-object v5, v3, v10

    .line 276
    iput-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 277
    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addWithNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 280
    .end local v2    # "originalAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .end local v3    # "newAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_17
    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->resolve(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 283
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassFlags()[J

    move-result-object v2

    aget-wide v10, v2, p1

    long-to-int v2, v10

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->accessFlags:I

    .line 284
    invoke-virtual {v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v2

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->thisClass:I

    .line 285
    move-object/from16 v2, v35

    .end local v35    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v2, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v3

    iput v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->superClass:I

    .line 287
    move-object/from16 v3, v31

    .end local v31    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v3, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    array-length v6, v3

    new-array v6, v6, [I

    iput-object v6, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->interfaces:[I

    .line 288
    const/4 v6, 0x0

    .end local v21    # "i":I
    .local v6, "i":I
    :goto_13
    array-length v10, v3

    if-ge v6, v10, :cond_18

    .line 289
    iget-object v10, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->interfaces:[I

    aget-object v11, v3, v6

    invoke-virtual {v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v11

    aput v11, v10, v6

    .line 288
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 291
    :cond_18
    move-object/from16 v10, v30

    .end local v30    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v10, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iput-object v10, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->fields:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 292
    move-object/from16 v11, v28

    .end local v28    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v11, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iput-object v11, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->methods:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 293
    return-object v1
.end method

.method private computeIcStored([Lorg/apache/commons/compress/harmony/unpack200/IcTuple;[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)Ljava/util/List;
    .locals 8
    .param p1, "icLocal"    # [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .param p2, "icRelevant"    # [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            "[",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v1, "duplicates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 313
    .local v2, "isInResult":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 314
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 315
    .local v6, "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 316
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v6    # "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 322
    :cond_1
    array-length v4, p2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, p2, v3

    .line 323
    .local v5, "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 326
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v5    # "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/Segment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 333
    return-object v0
.end method

.method private parseSegment()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->unpack()V

    .line 386
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->unpack()V

    .line 387
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->unpack()V

    .line 388
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->unpack()V

    .line 389
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->unpack()V

    .line 390
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->unpack()V

    .line 391
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->unpack()V

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "classNum":I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v2

    .line 395
    .local v2, "numberOfFiles":I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileName()[Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "fileName":[Ljava/lang/String;
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileOptions()[I

    move-result-object v4

    .line 397
    .local v4, "fileOptions":[I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v5

    .line 399
    .local v5, "options":Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
    new-array v6, v2, [[B

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    .line 400
    new-array v6, v2, [Z

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    .line 401
    new-array v6, v2, [Z

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    .line 403
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 404
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 406
    .local v7, "dos":Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_9

    .line 407
    aget-object v9, v3, v8

    .line 409
    .local v9, "name":Ljava/lang/String;
    const/4 v11, 0x1

    if-eqz v9, :cond_1

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v12, 0x1

    .line 410
    .local v12, "nameIsEmpty":Z
    :goto_2
    aget v13, v4, v8

    const/4 v14, 0x2

    and-int/2addr v13, v14

    if-eq v13, v14, :cond_3

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v13, 0x1

    .line 411
    .local v13, "isClass":Z
    :goto_4
    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 412
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v10

    aget v10, v10, v1

    aget-object v10, v15, v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ".class"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 413
    aput-object v9, v3, v8

    .line 416
    :cond_4
    iget-boolean v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint:Z

    if-nez v10, :cond_7

    .line 417
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    aget v14, v4, v8

    and-int/2addr v14, v11

    if-eq v14, v11, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->shouldDeflate()Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    :goto_6
    aput-boolean v16, v10, v8

    goto :goto_7

    .line 419
    :cond_7
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    iget-boolean v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->deflateHint:Z

    aput-boolean v11, v10, v8

    .line 422
    :goto_7
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    aput-boolean v13, v10, v8

    .line 424
    if-eqz v13, :cond_8

    .line 425
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->buildClassFile(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;

    move-result-object v10

    .line 426
    .local v10, "classFile":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    invoke-virtual {v10, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 427
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 429
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    aput-object v14, v11, v1

    .line 430
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 432
    add-int/lit8 v1, v1, 0x1

    .line 406
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "classFile":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    .end local v12    # "nameIsEmpty":Z
    .end local v13    # "isClass":Z
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 435
    .end local v8    # "i":I
    :cond_9
    return-void
.end method

.method private readSegment(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 446
    const/4 v0, 0x2

    const-string v1, "-------"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 447
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 448
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->read(Ljava/io/InputStream;)V

    .line 449
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    .line 450
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->read(Ljava/io/InputStream;)V

    .line 451
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    .line 452
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->read(Ljava/io/InputStream;)V

    .line 453
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    .line 454
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->read(Ljava/io/InputStream;)V

    .line 455
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    .line 456
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->read(Ljava/io/InputStream;)V

    .line 457
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    .line 458
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->read(Ljava/io/InputStream;)V

    .line 460
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->processFileBits()V

    .line 461
    return-void
.end method


# virtual methods
.method protected getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    return-object v0
.end method

.method protected getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    return-object v0
.end method

.method public getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    return-object v0
.end method

.method protected getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    return-object v0
.end method

.method protected getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    return-object v0
.end method

.method public getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    return-object v0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 361
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logLevel:I

    if-lt v0, p1, :cond_0

    .line 362
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public overrideDeflateHint(Z)V
    .locals 1
    .param p1, "deflateHint"    # Z

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint:Z

    .line 373
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->deflateHint:Z

    .line 374
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .line 464
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logLevel:I

    .line 465
    return-void
.end method

.method public setLogStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "logStream"    # Ljava/io/OutputStream;

    .line 468
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    .line 469
    return-void
.end method

.method public setPreRead(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 472
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->doPreRead:Z

    .line 473
    return-void
.end method

.method public unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 484
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpackRead(Ljava/io/InputStream;)V

    .line 485
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpackProcess()V

    .line 486
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpackWrite(Ljava/util/jar/JarOutputStream;)V

    .line 487
    return-void
.end method

.method unpackProcess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->internalBuffer:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->internalBuffer:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->readSegment(Ljava/io/InputStream;)V

    .line 493
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->parseSegment()V

    .line 494
    return-void
.end method

.method unpackRead(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 504
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    .line 505
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->read(Ljava/io/InputStream;)V

    .line 507
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSize()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSizeOffset()I

    move-result v0

    sub-int/2addr v1, v0

    .line 509
    .local v1, "size":I
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->doPreRead:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 510
    new-array v0, v1, [B

    .line 511
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 512
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->internalBuffer:Ljava/io/InputStream;

    .line 513
    .end local v0    # "data":[B
    goto :goto_0

    .line 514
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->readSegment(Ljava/io/InputStream;)V

    .line 516
    :goto_0
    return-void
.end method

.method unpackWrite(Ljava/util/jar/JarOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->writeJar(Ljava/util/jar/JarOutputStream;)V

    .line 520
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 523
    :cond_0
    return-void
.end method

.method public writeJar(Ljava/util/jar/JarOutputStream;)V
    .locals 21
    .param p1, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileName()[Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "fileName":[Ljava/lang/String;
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileModtime()[I

    move-result-object v3

    .line 537
    .local v3, "fileModtime":[I
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileSize()[J

    move-result-object v4

    .line 538
    .local v4, "fileSize":[J
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileBits()[[B

    move-result-object v5

    .line 541
    .local v5, "fileBits":[[B
    const/4 v6, 0x0

    .line 542
    .local v6, "classNum":I
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v7

    .line 543
    .local v7, "numberOfFiles":I
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveModtime()J

    move-result-wide v8

    .line 545
    .local v8, "archiveModtime":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_3

    .line 546
    aget-object v11, v2, v10

    .line 553
    .local v11, "name":Ljava/lang/String;
    aget v12, v3, v10

    int-to-long v12, v12

    add-long/2addr v12, v8

    const-wide/16 v14, 0x3e8

    mul-long v12, v12, v14

    .line 554
    .local v12, "modtime":J
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    aget-boolean v14, v14, v10

    .line 556
    .local v14, "deflate":Z
    new-instance v15, Ljava/util/jar/JarEntry;

    invoke-direct {v15, v11}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 557
    .local v15, "entry":Ljava/util/jar/JarEntry;
    if-eqz v14, :cond_0

    .line 558
    move-object/from16 v16, v2

    .end local v2    # "fileName":[Ljava/lang/String;
    .local v16, "fileName":[Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Ljava/util/jar/JarEntry;->setMethod(I)V

    move-object/from16 v17, v3

    move/from16 v18, v7

    move-wide/from16 v19, v8

    goto :goto_2

    .line 560
    .end local v16    # "fileName":[Ljava/lang/String;
    .restart local v2    # "fileName":[Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v2

    .end local v2    # "fileName":[Ljava/lang/String;
    .restart local v16    # "fileName":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/jar/JarEntry;->setMethod(I)V

    .line 561
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 562
    .local v2, "crc":Ljava/util/zip/CRC32;
    move-object/from16 v17, v3

    .end local v3    # "fileModtime":[I
    .local v17, "fileModtime":[I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_1

    .line 563
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 564
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v3, v3, v6

    array-length v3, v3

    move/from16 v18, v7

    move-wide/from16 v19, v8

    .end local v7    # "numberOfFiles":I
    .end local v8    # "archiveModtime":J
    .local v18, "numberOfFiles":I
    .local v19, "archiveModtime":J
    int-to-long v7, v3

    invoke-virtual {v15, v7, v8}, Ljava/util/jar/JarEntry;->setSize(J)V

    goto :goto_1

    .line 566
    .end local v18    # "numberOfFiles":I
    .end local v19    # "archiveModtime":J
    .restart local v7    # "numberOfFiles":I
    .restart local v8    # "archiveModtime":J
    :cond_1
    move/from16 v18, v7

    move-wide/from16 v19, v8

    .end local v7    # "numberOfFiles":I
    .end local v8    # "archiveModtime":J
    .restart local v18    # "numberOfFiles":I
    .restart local v19    # "archiveModtime":J
    aget-object v3, v5, v10

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 567
    aget-wide v7, v4, v10

    invoke-virtual {v15, v7, v8}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 569
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Ljava/util/jar/JarEntry;->setCrc(J)V

    .line 572
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    :goto_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v12, v2

    invoke-virtual {v15, v2, v3}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 573
    invoke-virtual {v1, v15}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 576
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_2

    .line 577
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v2, v2, v6

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v15, v2, v3}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 578
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 581
    :cond_2
    aget-wide v2, v4, v10

    invoke-virtual {v15, v2, v3}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 582
    aget-object v2, v5, v10

    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 545
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "modtime":J
    .end local v14    # "deflate":Z
    .end local v15    # "entry":Ljava/util/jar/JarEntry;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v7, v18

    move-wide/from16 v8, v19

    goto/16 :goto_0

    .line 585
    .end local v10    # "i":I
    .end local v16    # "fileName":[Ljava/lang/String;
    .end local v17    # "fileModtime":[I
    .end local v18    # "numberOfFiles":I
    .end local v19    # "archiveModtime":J
    .local v2, "fileName":[Ljava/lang/String;
    .restart local v3    # "fileModtime":[I
    .restart local v7    # "numberOfFiles":I
    .restart local v8    # "archiveModtime":J
    :cond_3
    return-void
.end method
