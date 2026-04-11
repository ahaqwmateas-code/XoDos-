.class public final synthetic Lj$/util/Set$-CC;
.super Ljava/lang/Object;
.source "Set.java"


# direct methods
.method public static $default$spliterator(Ljava/util/Set;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Ljava/util/Set;

    .line 411
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
