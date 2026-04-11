.class public abstract Lcom/termux/x11/controller/core/MSLink;
.super Ljava/lang/Object;
.source "MSLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/core/MSLink$Options;
    }
.end annotation


# static fields
.field private static final ForceNoLinkInfo:I = 0x100

.field private static final HasArguments:I = 0x20

.field private static final HasIconLocation:I = 0x40

.field private static final HasLinkTargetIDList:I = 0x1

.field public static final SW_SHOWMAXIMIZED:B = 0x3t

.field public static final SW_SHOWMINNOACTIVE:B = 0x7t

.field public static final SW_SHOWNORMAL:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charToHexDigit(C)I
    .locals 1
    .param p0, "chr"    # C

    .line 28
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0
.end method

.method private static convertCLSIDtoDATA(Ljava/lang/String;)[B
    .locals 19
    .param p0, "str"    # Ljava/lang/String;

    .line 36
    move-object/from16 v0, p0

    .line 37
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v2, v4}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v2

    .line 38
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v5

    .line 39
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v8, v10}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v8

    .line 40
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v11, v13}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v11

    .line 41
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xc

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v14, v13}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v13

    .line 42
    const/16 v14, 0x9

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v15, v3}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v3

    .line 43
    const/16 v15, 0x10

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v14, v1}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v1

    .line 44
    const/16 v14, 0xe

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0xf

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v6, v4}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v4

    .line 45
    const/16 v6, 0x13

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0x14

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v6, v14}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v6

    .line 46
    const/16 v14, 0x15

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v9, 0x16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v14, v9}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v9

    .line 47
    const/16 v14, 0x18

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v7, 0x19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v14, v7}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v7

    .line 48
    const/16 v14, 0x1a

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v12, 0x1b

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v14, v12}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v12

    .line 49
    const/16 v14, 0x1c

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v10, 0x1d

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v14, v10}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v10

    .line 50
    const/16 v14, 0x1e

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x1f

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v14, v15}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v14

    .line 51
    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v17, v14

    const/16 v14, 0x21

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v15, v14}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v14

    .line 52
    const/16 v15, 0x22

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v18, v14

    const/16 v14, 0x23

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v15, v14}, Lcom/termux/x11/controller/core/MSLink;->twoCharsToByte(CC)B

    move-result v14

    const/16 v15, 0x10

    new-array v15, v15, [B

    const/16 v16, 0x0

    aput-byte v2, v15, v16

    const/4 v2, 0x1

    aput-byte v5, v15, v2

    const/4 v2, 0x2

    aput-byte v8, v15, v2

    const/4 v2, 0x3

    aput-byte v11, v15, v2

    const/4 v2, 0x4

    aput-byte v13, v15, v2

    const/4 v2, 0x5

    aput-byte v3, v15, v2

    const/4 v2, 0x6

    aput-byte v1, v15, v2

    const/4 v1, 0x7

    aput-byte v4, v15, v1

    const/16 v1, 0x8

    aput-byte v6, v15, v1

    const/16 v1, 0x9

    aput-byte v9, v15, v1

    const/16 v1, 0xa

    aput-byte v7, v15, v1

    const/16 v1, 0xb

    aput-byte v12, v15, v1

    const/16 v1, 0xc

    aput-byte v10, v15, v1

    const/16 v1, 0xd

    aput-byte v17, v15, v1

    const/16 v1, 0xe

    aput-byte v18, v15, v1

    const/16 v1, 0xf

    aput-byte v14, v15, v1

    .line 36
    return-object v15
.end method

.method public static createFile(Lcom/termux/x11/controller/core/MSLink$Options;Ljava/io/File;)V
    .locals 33
    .param p0, "options"    # Lcom/termux/x11/controller/core/MSLink$Options;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 85
    move-object/from16 v1, p0

    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 86
    .local v2, "HeaderSize":[B
    const-string v3, "00021401-0000-0000-c000-000000000046"

    invoke-static {v3}, Lcom/termux/x11/controller/core/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v3

    .line 88
    .local v3, "LinkCLSID":[B
    const/16 v4, 0x101

    .line 89
    .local v4, "linkFlags":I
    iget-object v5, v1, Lcom/termux/x11/controller/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/termux/x11/controller/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    or-int/lit8 v4, v4, 0x20

    .line 90
    :cond_0
    iget-object v5, v1, Lcom/termux/x11/controller/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/termux/x11/controller/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    or-int/lit8 v4, v4, 0x40

    .line 92
    :cond_1
    invoke-static {v4}, Lcom/termux/x11/controller/core/MSLink;->intToByteArray(I)[B

    move-result-object v5

    .line 95
    .local v5, "LinkFlags":[B
    iget-object v6, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    const-string v7, "/+"

    const-string v8, "\\\\"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    .line 96
    iget-object v6, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0xc

    if-eqz v6, :cond_2

    .line 97
    new-array v6, v0, [B

    fill-array-data v6, :array_1

    .line 98
    .local v6, "FileAttributes":[B
    new-array v8, v8, [B

    fill-array-data v8, :array_2

    .line 99
    .local v8, "prefixOfTarget":[B
    iget-object v9, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    const-string v10, "\\\\+$"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    goto :goto_0

    .line 102
    .end local v6    # "FileAttributes":[B
    .end local v8    # "prefixOfTarget":[B
    :cond_2
    new-array v6, v0, [B

    fill-array-data v6, :array_3

    .line 103
    .restart local v6    # "FileAttributes":[B
    new-array v8, v8, [B

    fill-array-data v8, :array_4

    .line 107
    .restart local v8    # "prefixOfTarget":[B
    :goto_0
    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_5

    move-object v10, v9

    .local v10, "WriteTime":[B
    move-object v11, v9

    .line 109
    .local v9, "CreationTime":[B
    .local v11, "AccessTime":[B
    iget v12, v1, Lcom/termux/x11/controller/core/MSLink$Options;->fileSize:I

    invoke-static {v12}, Lcom/termux/x11/controller/core/MSLink;->intToByteArray(I)[B

    move-result-object v12

    .line 110
    .local v12, "FileSize":[B
    iget v13, v1, Lcom/termux/x11/controller/core/MSLink$Options;->iconIndex:I

    invoke-static {v13}, Lcom/termux/x11/controller/core/MSLink;->intToByteArray(I)[B

    move-result-object v13

    .line 111
    .local v13, "IconIndex":[B
    iget v14, v1, Lcom/termux/x11/controller/core/MSLink$Options;->showCommand:I

    invoke-static {v14}, Lcom/termux/x11/controller/core/MSLink;->intToByteArray(I)[B

    move-result-object v14

    .line 112
    .local v14, "ShowCommand":[B
    const/4 v15, 0x2

    new-array v0, v15, [B

    fill-array-data v0, :array_6

    move-object/from16 v17, v0

    .line 113
    .local v17, "Hotkey":[B
    new-array v0, v15, [B

    fill-array-data v0, :array_7

    move-object/from16 v18, v0

    .line 114
    .local v18, "Reserved1":[B
    const/4 v0, 0x4

    new-array v15, v0, [B

    fill-array-data v15, :array_8

    .line 115
    .local v15, "Reserved2":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_9

    move-object/from16 v19, v0

    .line 117
    .local v19, "Reserved3":[B
    const-string v0, "20d04fe0-3aea-1069-a2d8-08002b30309d"

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v20

    .line 118
    .local v20, "CLSIDComputer":[B
    const-string v0, "208d2c60-3aea-1069-a2d7-08002b30309d"

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v21

    .line 121
    .local v21, "CLSIDNetwork":[B
    iget-object v0, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v22, v15

    .end local v15    # "Reserved2":[B
    .local v22, "Reserved2":[B
    if-eqz v0, :cond_4

    .line 122
    const/4 v0, 0x3

    new-array v15, v0, [B

    fill-array-data v15, :array_a

    move-object v0, v15

    .line 123
    .local v0, "prefixRoot":[B
    iget-object v15, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-static {v15}, Lcom/termux/x11/controller/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 124
    .local v15, "targetRoot":[B
    move-object/from16 v25, v0

    .end local v0    # "prefixRoot":[B
    .local v25, "prefixRoot":[B
    iget-object v0, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    move-object/from16 v26, v15

    .end local v15    # "targetRoot":[B
    .local v26, "targetRoot":[B
    iget-object v15, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v15, 0x1

    add-int/2addr v7, v15

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .end local v26    # "targetRoot":[B
    .restart local v15    # "targetRoot":[B
    :cond_3
    move-object/from16 v26, v15

    .end local v15    # "targetRoot":[B
    .restart local v26    # "targetRoot":[B
    const/4 v0, 0x0

    .line 125
    .local v0, "targetLeaf":[B
    :goto_1
    const/4 v7, 0x2

    new-array v15, v7, [B

    fill-array-data v15, :array_b

    move-object/from16 v27, v0

    .end local v0    # "targetLeaf":[B
    .local v27, "targetLeaf":[B
    new-array v0, v7, [[B

    const/4 v7, 0x0

    aput-object v15, v0, v7

    const/4 v15, 0x1

    aput-object v21, v0, v15

    invoke-static {v0}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    move-object v7, v0

    move-object/from16 v15, v26

    const/4 v0, 0x1

    const/16 v24, 0x0

    move-object/from16 v26, v25

    move-object/from16 v25, v14

    const/4 v14, 0x2

    .local v0, "itemData":[B
    goto :goto_2

    .line 128
    .end local v0    # "itemData":[B
    .end local v25    # "prefixRoot":[B
    .end local v26    # "targetRoot":[B
    .end local v27    # "targetLeaf":[B
    :cond_4
    const/4 v0, 0x0

    const/4 v15, 0x1

    move-object/from16 v25, v14

    .end local v14    # "ShowCommand":[B
    .local v25, "ShowCommand":[B
    new-array v14, v15, [B

    const/16 v15, 0x2f

    aput-byte v15, v14, v0

    .line 129
    .local v14, "prefixRoot":[B
    iget-object v15, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 130
    .local v7, "index":I
    iget-object v15, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    move-object/from16 v26, v14

    .end local v14    # "prefixRoot":[B
    .local v26, "prefixRoot":[B
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v15, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/termux/x11/controller/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 131
    .restart local v15    # "targetRoot":[B
    iget-object v0, v1, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 132
    .local v0, "targetLeaf":[B
    move-object/from16 v16, v0

    const/4 v14, 0x2

    .end local v0    # "targetLeaf":[B
    .local v16, "targetLeaf":[B
    new-array v0, v14, [B

    fill-array-data v0, :array_c

    move/from16 v27, v7

    .end local v7    # "index":I
    .local v27, "index":I
    new-array v7, v14, [[B

    const/16 v24, 0x0

    aput-object v0, v7, v24

    const/4 v0, 0x1

    aput-object v20, v7, v0

    invoke-static {v7}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v7

    move-object/from16 v27, v16

    .line 135
    .end local v16    # "targetLeaf":[B
    .local v7, "itemData":[B
    .local v27, "targetLeaf":[B
    :goto_2
    const/16 v0, 0x15

    new-array v0, v0, [B

    move-object/from16 v28, v13

    .end local v13    # "IconIndex":[B
    .local v28, "IconIndex":[B
    new-array v13, v14, [[B

    aput-object v15, v13, v24

    const/4 v14, 0x1

    aput-object v0, v13, v14

    invoke-static {v13}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v13

    .line 137
    .end local v15    # "targetRoot":[B
    .local v13, "targetRoot":[B
    new-array v0, v14, [B

    aput-byte v24, v0, v24

    move-object v15, v0

    .line 138
    .local v15, "endOfString":[B
    invoke-static {v7}, Lcom/termux/x11/controller/core/MSLink;->generateIDLIST([B)[B

    move-result-object v0

    move-object/from16 v29, v7

    const/4 v14, 0x3

    .end local v7    # "itemData":[B
    .local v29, "itemData":[B
    new-array v7, v14, [[B

    aput-object v26, v7, v24

    const/4 v14, 0x1

    aput-object v13, v7, v14

    const/4 v14, 0x2

    aput-object v15, v7, v14

    invoke-static {v7}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/termux/x11/controller/core/MSLink;->generateIDLIST([B)[B

    move-result-object v7

    move-object/from16 v30, v13

    .end local v13    # "targetRoot":[B
    .local v30, "targetRoot":[B
    new-array v13, v14, [[B

    aput-object v0, v13, v24

    const/4 v0, 0x1

    aput-object v7, v13, v0

    invoke-static {v13}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v7

    .line 139
    .local v7, "IDListItems":[B
    if-eqz v27, :cond_5

    const/4 v13, 0x3

    new-array v13, v13, [[B

    aput-object v8, v13, v24

    aput-object v27, v13, v0

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v13

    invoke-static {v13}, Lcom/termux/x11/controller/core/MSLink;->generateIDLIST([B)[B

    move-result-object v13

    move-object/from16 v23, v8

    .end local v8    # "prefixOfTarget":[B
    .local v23, "prefixOfTarget":[B
    new-array v8, v14, [[B

    aput-object v7, v8, v24

    aput-object v13, v8, v0

    invoke-static {v8}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v7

    goto :goto_3

    .end local v23    # "prefixOfTarget":[B
    .restart local v8    # "prefixOfTarget":[B
    :cond_5
    move-object/from16 v23, v8

    .line 140
    .end local v8    # "prefixOfTarget":[B
    .restart local v23    # "prefixOfTarget":[B
    :goto_3
    invoke-static {v7}, Lcom/termux/x11/controller/core/MSLink;->generateIDLIST([B)[B

    move-result-object v8

    .line 142
    .local v8, "IDList":[B
    new-array v0, v14, [B

    fill-array-data v0, :array_d

    move-object v13, v0

    .line 144
    .local v13, "TerminalID":[B
    const/4 v0, 0x0

    new-array v14, v0, [B

    .line 145
    .local v14, "StringData":[B
    and-int/lit8 v24, v4, 0x20

    if-eqz v24, :cond_6

    iget-object v0, v1, Lcom/termux/x11/controller/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->stringSizePaddedToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object/from16 v31, v7

    move-object/from16 v32, v15

    const/4 v7, 0x2

    .end local v7    # "IDListItems":[B
    .end local v15    # "endOfString":[B
    .local v31, "IDListItems":[B
    .local v32, "endOfString":[B
    new-array v15, v7, [[B

    const/4 v7, 0x0

    aput-object v14, v15, v7

    const/4 v7, 0x1

    aput-object v0, v15, v7

    invoke-static {v15}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v14

    goto :goto_4

    .end local v31    # "IDListItems":[B
    .end local v32    # "endOfString":[B
    .restart local v7    # "IDListItems":[B
    .restart local v15    # "endOfString":[B
    :cond_6
    move-object/from16 v31, v7

    move-object/from16 v32, v15

    .line 146
    .end local v7    # "IDListItems":[B
    .end local v15    # "endOfString":[B
    .restart local v31    # "IDListItems":[B
    .restart local v32    # "endOfString":[B
    :goto_4
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/termux/x11/controller/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->stringSizePaddedToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v7, 0x2

    new-array v7, v7, [[B

    const/4 v15, 0x0

    aput-object v14, v7, v15

    const/4 v15, 0x1

    aput-object v0, v7, v15

    invoke-static {v7}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v14

    .line 148
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v15, v0

    .line 149
    .local v15, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v15, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 150
    invoke-virtual {v15, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    invoke-virtual {v15, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 152
    invoke-virtual {v15, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v15, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    invoke-virtual {v15, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 155
    invoke-virtual {v15, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    invoke-virtual {v15, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 157
    move-object/from16 v1, v28

    .end local v28    # "IconIndex":[B
    .local v1, "IconIndex":[B
    :try_start_3
    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 158
    move-object/from16 v28, v1

    move-object/from16 v1, v25

    .end local v25    # "ShowCommand":[B
    .local v1, "ShowCommand":[B
    .restart local v28    # "IconIndex":[B
    :try_start_4
    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 159
    move-object/from16 v25, v1

    move-object/from16 v1, v17

    .end local v17    # "Hotkey":[B
    .local v1, "Hotkey":[B
    .restart local v25    # "ShowCommand":[B
    :try_start_5
    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 160
    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .end local v18    # "Reserved1":[B
    .local v1, "Reserved1":[B
    .local v16, "Hotkey":[B
    :try_start_6
    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 161
    move-object/from16 v17, v1

    move-object/from16 v1, v22

    .end local v22    # "Reserved2":[B
    .local v1, "Reserved2":[B
    .local v17, "Reserved1":[B
    :try_start_7
    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 162
    move-object/from16 v22, v1

    move-object/from16 v1, v19

    .end local v19    # "Reserved3":[B
    .local v1, "Reserved3":[B
    .restart local v22    # "Reserved2":[B
    :try_start_8
    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 163
    invoke-virtual {v15, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 164
    invoke-virtual {v15, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    array-length v0, v14

    if-lez v0, :cond_8

    invoke-virtual {v15, v14}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 167
    :cond_8
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 170
    .end local v15    # "os":Ljava/io/FileOutputStream;
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    goto/16 :goto_9

    .line 168
    :catch_0
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    goto/16 :goto_8

    .line 148
    .restart local v15    # "os":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v1

    move-object v1, v0

    goto :goto_5

    .end local v22    # "Reserved2":[B
    .local v1, "Reserved2":[B
    .restart local v19    # "Reserved3":[B
    :catchall_1
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v1, v19

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v19    # "Reserved3":[B
    .local v1, "Reserved3":[B
    .restart local v22    # "Reserved2":[B
    goto :goto_5

    .end local v17    # "Reserved1":[B
    .local v1, "Reserved1":[B
    .restart local v19    # "Reserved3":[B
    :catchall_2
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v19    # "Reserved3":[B
    .local v1, "Reserved3":[B
    .restart local v17    # "Reserved1":[B
    goto :goto_5

    .end local v16    # "Hotkey":[B
    .end local v17    # "Reserved1":[B
    .local v1, "Hotkey":[B
    .restart local v18    # "Reserved1":[B
    .restart local v19    # "Reserved3":[B
    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v18

    move-object/from16 v1, v19

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v18    # "Reserved1":[B
    .end local v19    # "Reserved3":[B
    .local v1, "Reserved3":[B
    .restart local v16    # "Hotkey":[B
    .restart local v17    # "Reserved1":[B
    goto :goto_5

    .end local v16    # "Hotkey":[B
    .end local v25    # "ShowCommand":[B
    .local v1, "ShowCommand":[B
    .local v17, "Hotkey":[B
    .restart local v18    # "Reserved1":[B
    .restart local v19    # "Reserved3":[B
    :catchall_4
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v1, v19

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v18    # "Reserved1":[B
    .end local v19    # "Reserved3":[B
    .local v1, "Reserved3":[B
    .restart local v16    # "Hotkey":[B
    .local v17, "Reserved1":[B
    .restart local v25    # "ShowCommand":[B
    goto :goto_5

    .end local v16    # "Hotkey":[B
    .end local v28    # "IconIndex":[B
    .local v1, "IconIndex":[B
    .local v17, "Hotkey":[B
    .restart local v18    # "Reserved1":[B
    .restart local v19    # "Reserved3":[B
    :catchall_5
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v1, v19

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v18    # "Reserved1":[B
    .end local v19    # "Reserved3":[B
    .local v1, "Reserved3":[B
    .restart local v16    # "Hotkey":[B
    .local v17, "Reserved1":[B
    .restart local v28    # "IconIndex":[B
    goto :goto_5

    .end local v1    # "Reserved3":[B
    .end local v16    # "Hotkey":[B
    .local v17, "Hotkey":[B
    .restart local v18    # "Reserved1":[B
    .restart local v19    # "Reserved3":[B
    :catchall_6
    move-exception v0

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v1, v19

    move-object/from16 v18, v1

    move-object v1, v0

    .end local v19    # "Reserved3":[B
    .restart local v16    # "Hotkey":[B
    .local v17, "Reserved1":[B
    .local v18, "Reserved3":[B
    :goto_5
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v19, v2

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .end local v2    # "HeaderSize":[B
    .local v19, "HeaderSize":[B
    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "LinkCLSID":[B
    .end local v4    # "linkFlags":I
    .end local v5    # "LinkFlags":[B
    .end local v6    # "FileAttributes":[B
    .end local v8    # "IDList":[B
    .end local v9    # "CreationTime":[B
    .end local v10    # "WriteTime":[B
    .end local v11    # "AccessTime":[B
    .end local v12    # "FileSize":[B
    .end local v13    # "TerminalID":[B
    .end local v14    # "StringData":[B
    .end local v16    # "Hotkey":[B
    .end local v17    # "Reserved1":[B
    .end local v18    # "Reserved3":[B
    .end local v19    # "HeaderSize":[B
    .end local v20    # "CLSIDComputer":[B
    .end local v21    # "CLSIDNetwork":[B
    .end local v22    # "Reserved2":[B
    .end local v23    # "prefixOfTarget":[B
    .end local v25    # "ShowCommand":[B
    .end local v26    # "prefixRoot":[B
    .end local v27    # "targetLeaf":[B
    .end local v28    # "IconIndex":[B
    .end local v29    # "itemData":[B
    .end local v30    # "targetRoot":[B
    .end local v31    # "IDListItems":[B
    .end local v32    # "endOfString":[B
    .end local p0    # "options":Lcom/termux/x11/controller/core/MSLink$Options;
    .end local p1    # "outputFile":Ljava/io/File;
    :goto_6
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 168
    .end local v15    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "LinkCLSID":[B
    .restart local v4    # "linkFlags":I
    .restart local v5    # "LinkFlags":[B
    .restart local v6    # "FileAttributes":[B
    .restart local v8    # "IDList":[B
    .restart local v9    # "CreationTime":[B
    .restart local v10    # "WriteTime":[B
    .restart local v11    # "AccessTime":[B
    .restart local v12    # "FileSize":[B
    .restart local v13    # "TerminalID":[B
    .restart local v14    # "StringData":[B
    .restart local v16    # "Hotkey":[B
    .restart local v17    # "Reserved1":[B
    .restart local v18    # "Reserved3":[B
    .restart local v19    # "HeaderSize":[B
    .restart local v20    # "CLSIDComputer":[B
    .restart local v21    # "CLSIDNetwork":[B
    .restart local v22    # "Reserved2":[B
    .restart local v23    # "prefixOfTarget":[B
    .restart local v25    # "ShowCommand":[B
    .restart local v26    # "prefixRoot":[B
    .restart local v27    # "targetLeaf":[B
    .restart local v28    # "IconIndex":[B
    .restart local v29    # "itemData":[B
    .restart local v30    # "targetRoot":[B
    .restart local v31    # "IDListItems":[B
    .restart local v32    # "endOfString":[B
    .restart local p0    # "options":Lcom/termux/x11/controller/core/MSLink$Options;
    .restart local p1    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v16    # "Hotkey":[B
    .restart local v2    # "HeaderSize":[B
    .local v17, "Hotkey":[B
    .local v18, "Reserved1":[B
    .local v19, "Reserved3":[B
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    :goto_7
    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v2

    .line 169
    .end local v2    # "HeaderSize":[B
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "Hotkey":[B
    .local v17, "Reserved1":[B
    .local v18, "Reserved3":[B
    .local v19, "HeaderSize":[B
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    return-void

    nop

    :array_0
    .array-data 1
        0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x31t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        -0x3dt
        0x1t
        -0x7ft
    .end array-data

    :array_b
    .array-data 1
        0x1ft
        0x58t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1ft
        0x50t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static createFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 79
    new-instance v0, Lcom/termux/x11/controller/core/MSLink$Options;

    invoke-direct {v0}, Lcom/termux/x11/controller/core/MSLink$Options;-><init>()V

    .line 80
    .local v0, "options":Lcom/termux/x11/controller/core/MSLink$Options;
    iput-object p0, v0, Lcom/termux/x11/controller/core/MSLink$Options;->targetPath:Ljava/lang/String;

    .line 81
    invoke-static {v0, p1}, Lcom/termux/x11/controller/core/MSLink;->createFile(Lcom/termux/x11/controller/core/MSLink$Options;Ljava/io/File;)V

    .line 82
    return-void
.end method

.method private static generateIDLIST([B)[B
    .locals 4
    .param p0, "bytes"    # [B

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p0

    add-int/2addr v2, v0

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 75
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-array v0, v0, [[B

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/termux/x11/controller/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .line 63
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static stringSizePaddedToByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 58
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static twoCharsToByte(CC)B
    .locals 2
    .param p0, "chr1"    # C
    .param p1, "chr2"    # C

    .line 32
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Lcom/termux/x11/controller/core/MSLink;->charToHexDigit(C)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Lcom/termux/x11/controller/core/MSLink;->charToHexDigit(C)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
