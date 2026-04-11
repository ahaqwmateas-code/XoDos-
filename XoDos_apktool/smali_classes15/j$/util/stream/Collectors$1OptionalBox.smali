.class Lj$/util/stream/Collectors$1OptionalBox;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lj$/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/Collectors;->reducing(Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field present:Z

.field final synthetic val$op:Lj$/util/function/BinaryOperator;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 699
    iput-object p1, p0, Lj$/util/stream/Collectors$1OptionalBox;->val$op:Lj$/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    .line 701
    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/Collectors$1OptionalBox;->present:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 705
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lj$/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lj$/util/stream/Collectors$1OptionalBox;->val$op:Lj$/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    goto :goto_0

    .line 709
    :cond_0
    iput-object p1, p0, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Collectors$1OptionalBox;->present:Z

    .line 712
    :goto_0
    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
