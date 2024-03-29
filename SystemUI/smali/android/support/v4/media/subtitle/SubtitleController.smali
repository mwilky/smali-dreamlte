.class public Landroid/support/v4/media/subtitle/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/SubtitleController$Listener;,
        Landroid/support/v4/media/subtitle/SubtitleController$Anchor;,
        Landroid/support/v4/media/subtitle/SubtitleController$Renderer;,
        Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

.field private mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doShow()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doHide()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/subtitle/SubtitleController;Landroid/support/v4/media/subtitle/SubtitleTrack;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController;->doSelectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private doHide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->hide()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->hide()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->show()V

    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getDefaultTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z

    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    iget-boolean v2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->show()V

    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_5
    return-void
.end method

.method private doSelectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->hide()V

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->show()V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    invoke-interface {v0, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    :cond_4
    return-void
.end method

.method private doShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->show()V

    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    nop

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, v1, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    move-object v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    move-object v5, v0

    iget-object v0, v1, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    iget-object v8, v1, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, v1, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v9}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    const-string v11, "language"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "is-forced-subtitle"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    const-string v14, "is-autoselect"

    invoke-static {v10, v14, v6}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    move v14, v6

    goto :goto_2

    :cond_2
    move v14, v13

    :goto_2
    const-string v15, "is-default"

    invoke-static {v10, v15, v13}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_3

    move v15, v6

    goto :goto_3

    :cond_3
    move v15, v13

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v12, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    const/16 v13, 0x8

    :goto_6
    if-nez v4, :cond_7

    if-eqz v15, :cond_7

    const/16 v17, 0x4

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    :goto_7
    add-int v13, v13, v17

    if-eqz v14, :cond_8

    const/16 v17, 0x0

    goto :goto_8

    :cond_8
    const/16 v17, 0x2

    :goto_8
    add-int v13, v13, v17

    if-eqz v6, :cond_9

    const/16 v16, 0x1

    goto :goto_9

    :cond_9
    const/16 v16, 0x0

    :goto_9
    add-int v13, v13, v16

    if-eqz v7, :cond_a

    if-nez v12, :cond_a

    nop

    :goto_a
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    if-nez v15, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    if-nez v14, :cond_c

    if-nez v12, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    if-le v13, v3, :cond_d

    move v3, v13

    move-object v2, v9

    :cond_d
    goto :goto_a

    :cond_e
    monitor-exit v8

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method
