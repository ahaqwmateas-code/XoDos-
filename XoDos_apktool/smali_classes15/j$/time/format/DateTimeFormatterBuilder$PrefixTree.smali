.class Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrefixTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;,
        Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    }
.end annotation


# instance fields
.field protected c0:C

.field protected child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected key:Ljava/lang/String;

.field protected sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 3957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3958
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 3959
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 3960
    iput-object p3, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 3961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3962
    const v0, 0xffff

    iput-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    goto :goto_0

    .line 3964
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    .line 3966
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .param p4, "x3"    # Lj$/time/format/DateTimeFormatterBuilder$1;

    .line 3949
    invoke-direct {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method private add0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 4026
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4027
    invoke-direct {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixLength(Ljava/lang/String;)I

    move-result v0

    .line 4028
    .local v0, "prefixLen":I
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 4029
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4030
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4031
    .local v1, "subKey":Ljava/lang/String;
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4032
    .local v5, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :goto_0
    if-eqz v5, :cond_1

    .line 4033
    iget-char v6, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4034
    invoke-direct {v5, v1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 4036
    :cond_0
    iget-object v5, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    goto :goto_0

    .line 4039
    :cond_1
    invoke-virtual {p0, v1, p2, v4}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4040
    .end local v5    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .local v2, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v4, v2, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4041
    iput-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4042
    return v3

    .line 4048
    .end local v1    # "subKey":Ljava/lang/String;
    .end local v2    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_2
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4049
    return v3

    .line 4052
    :cond_3
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p0, v1, v5, v6}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    .line 4053
    .local v1, "n1":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 4054
    iput-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4055
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 4056
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v4}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4057
    .local v2, "n2":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4058
    iput-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4059
    .end local v2    # "n2":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    goto :goto_1

    .line 4060
    :cond_4
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4062
    :goto_1
    return v3
.end method

.method public static newTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 3
    .param p0, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 3978
    invoke-virtual {p0}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3979
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, v1, v2, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0

    .line 3981
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, v1, v2, v2, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder$1;)V

    return-object v0
.end method

.method public static newTree(Ljava/util/Set;Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 3
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lj$/time/format/DateTimeParseContext;",
            ")",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;"
        }
    .end annotation

    .line 3992
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v0

    .line 3993
    .local v0, "tree":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3994
    .local v2, "k":Ljava/lang/String;
    invoke-direct {v0, v2, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3995
    .end local v2    # "k":Ljava/lang/String;
    goto :goto_0

    .line 3996
    :cond_0
    return-object v0
.end method

.method private prefixLength(Ljava/lang/String;)I
    .locals 3
    .param p1, "k"    # Ljava/lang/String;

    .line 4157
    const/4 v0, 0x0

    .line 4158
    .local v0, "off":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4159
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4160
    return v0

    .line 4162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4164
    :cond_1
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 4022
    invoke-direct {p0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public copyTree()Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 4

    .line 4003
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    .line 4004
    .local v0, "copy":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_0

    .line 4005
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4007
    :cond_0
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_1

    .line 4008
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4010
    :cond_1
    return-object v0
.end method

.method protected isEqual(CC)Z
    .locals 1
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .line 4136
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public match(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4074
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4075
    const/4 v0, 0x0

    return-object v0

    .line 4077
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    move p2, v0

    if-eq v0, p3, :cond_4

    .line 4078
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4080
    .local v0, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_1
    iget-char v1, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4081
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 4082
    .local v1, "found":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4083
    return-object v1

    .line 4085
    :cond_2
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2

    .line 4087
    .end local v1    # "found":Ljava/lang/String;
    :cond_3
    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4088
    if-nez v0, :cond_1

    .line 4090
    .end local v0    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_4
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 4103
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 4104
    .local v0, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4105
    .local v1, "end":I
    invoke-virtual {p0, p1, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4106
    const/4 v2, 0x0

    return-object v2

    .line 4108
    :cond_0
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4109
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v2, :cond_3

    if-eq v0, v1, :cond_3

    .line 4110
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4112
    .local v2, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_1
    iget-char v3, v2, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4113
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4114
    invoke-virtual {v2, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    .line 4115
    .local v3, "found":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4116
    return-object v3

    .line 4120
    .end local v3    # "found":Ljava/lang/String;
    :cond_2
    iget-object v2, v2, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4121
    if-nez v2, :cond_1

    .line 4123
    .end local v2    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_3
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4124
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4132
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4140
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4141
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 4143
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4144
    .local v0, "len":I
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4145
    return v2

    .line 4147
    :cond_1
    const/4 v1, 0x0

    .line 4148
    .local v1, "off0":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "len":I
    .local v3, "len":I
    if-lez v0, :cond_3

    .line 4149
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off0":I
    .local v4, "off0":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4150
    return v2

    .line 4149
    :cond_2
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 4153
    .end local v4    # "off0":I
    .local v1, "off0":I
    .restart local p2    # "off":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .line 4128
    return-object p1
.end method
