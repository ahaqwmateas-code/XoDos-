.class Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;
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
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 130
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->CLASSIC_ARROWS_DISPLAY:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 133
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->NICER_LOOKING_DISPLAY:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 134
    return-void
.end method
