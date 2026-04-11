.class Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;
.super Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;
.source "TermuxX11ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 75
    const-string v0, "LEFT"

    const-string v1, "\u2190"

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "RIGHT"

    const-string v1, "\u2192"

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "UP"

    const-string v1, "\u2191"

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "DOWN"

    const-string v1, "\u2193"

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
