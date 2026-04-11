.class final Lj$/util/stream/ForEachOps$ForEachOp$OfRef;
.super Lj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/ForEachOps$ForEachOp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final consumer:Lj$/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/function/Consumer;Z)V
    .locals 0
    .param p2, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    .local p1, "consumer":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p2}, Lj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 179
    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Lj$/util/function/Consumer;

    .line 180
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Lj$/util/function/Consumer;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 185
    return-void
.end method
