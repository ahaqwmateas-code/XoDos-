.class Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$9;
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

    .line 149
    invoke-direct {p0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 150
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->CLASSIC_ARROWS_DISPLAY:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$9;->putAll(Ljava/util/Map;)V

    .line 151
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->WELL_KNOWN_CHARACTERS_DISPLAY:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$9;->putAll(Ljava/util/Map;)V

    .line 152
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->NICER_LOOKING_DISPLAY:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$9;->putAll(Ljava/util/Map;)V

    .line 154
    return-void
.end method
