.class public Lcom/termux/am/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextArg()Ljava/lang/String;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 77
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 78
    return-object v0

    .line 79
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    iget-object v2, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 82
    :cond_1
    return-object v1
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/termux/am/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 104
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNextOption()Ljava/lang/String;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 46
    iget v0, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    iget-object v2, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 47
    return-object v3

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    aget-object v0, v0, v2

    .line 50
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    return-object v3

    .line 53
    :cond_1
    iget v2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    .line 54
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    return-object v3

    .line 57
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    :cond_3
    iput-object v3, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 63
    return-object v0

    .line 66
    :cond_4
    iput-object v3, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 67
    return-object v0

    .line 43
    .end local v0    # "arg":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 44
    .local v0, "prev":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public init([Ljava/lang/String;I)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "firstArgPos"    # I

    .line 32
    iput-object p1, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public peekNextArg()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    iget-object v1, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/termux/am/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/termux/am/ShellCommand;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
