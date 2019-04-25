.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BLUE:I = 0x6

.field private static final BUFFER_SIZE:I = 0x3

.field private static final GOLD:I = 0x3

.field private static final GREEN:I = 0x5

.field private static final LAVENDER:I = 0x8

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/b2b/ShutdownFileInfo.txt"

.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_PST_IMG:Ljava/lang/String; = "//system/PST/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final PATH_SHUTDOWNSOUND_SKU_OGG:Ljava/lang/String; = "/media/audio/ui/PowerOff.ogg"

.field private static final PATH_SHUTDOWNSOUND_SKU_WAV:Ljava/lang/String; = "/media/audio/ui/PowerOff.wav"

.field private static final PATH_SHUTDOWN_AFTER:Ljava/lang/String; = "//system/media/shutdownafter.qmg"

.field private static final PATH_SHUTDOWN_BEFORE:Ljava/lang/String; = "//system/media/shutdownbefore.qmg"

.field private static final PATH_SHUTDOWN_LOOP:Ljava/lang/String; = "//system/media/shutdownloop.qmg"

.field private static final PATH_SHUTDOWN_SKU:Ljava/lang/String; = "/media/video/shutdown/"

.field private static final PINKGOLD:I = 0x7

.field private static final PROPERTY_SHUTDOWN_SKU:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final SILVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"

.field private static final WHITE:I = 0x2


# instance fields
.field private PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

.field private PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

.field private SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

.field private SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

.field private final WINDOWTYPE_OFFSET:I

.field private b2bAnimPath:Ljava/lang/String;

.field private b2bSoundPath:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field final chameleonCode:Ljava/lang/String;

.field final chameleonFile:Ljava/lang/String;

.field final chameleonFileExist:Z

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private silentShutdown:Z

.field private final supportChameleon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "//system/media/shutdown_"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

    const-string v0, ".qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    const-string v0, "/sys/class/lcd/panel/window_type"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->WINDOWTYPE_OFFSET:I

    const-string/jumbo v0, "shutdownbefore.qmg"

    const-string/jumbo v1, "shutdown.qmg"

    const-string/jumbo v2, "shutdownafter.qmg"

    const-string/jumbo v3, "shutdownloop.qmg"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    const-string v0, "/carrier/chameleon.xml"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFile:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/carrier/chameleon.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    const-string v1, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getBtoBShutdownPath()V

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B2B sound : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B2B img : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x46a0580

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x8ae

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x7e5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v3, 0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v1, Lcom/android/server/power/LibQmg;

    invoke-direct {v1, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p2, v0

    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private createShutdownQmgPlayList()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "//system/media/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_shutdown.qmg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v0, "//system/PST/shutdown.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readColorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getQmgCodeById(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.omc_respath"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_4
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@Power off sound CHAMELEON - update animation path to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v1, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shutdown_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/media/video/shutdown/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/media/video/shutdown/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/media/video/shutdown/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_7
    const-string v3, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    :cond_8
    if-eqz v1, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v4, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    return-void

    :cond_9
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/shutdown.qmg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v3, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    return-void

    :cond_a
    const-string v3, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    return-void

    :cond_b
    return-void
.end method

.method private getBtoBShutdownPath()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    throw v1
.end method

.method private getChameleonCode()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->isCarrierActivated()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "/carrier/chameleon.xml"

    const-string v1, "Operators.AndroidOperatorNetworkCode"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON network code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    const-string v1, "310000"

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    move-object v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x59d0375d

    if-eq v2, v3, :cond_6

    const v3, 0x59d0b7d8

    if-eq v2, v3, :cond_5

    const v3, 0x59d0c69e

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "311870"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v2, "311490"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "310120"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "XAS"

    goto :goto_2

    :pswitch_0
    const-string v1, "BST"

    goto :goto_2

    :pswitch_1
    const-string v1, "VMU"

    goto :goto_2

    :pswitch_2
    const-string v1, "SPR"

    nop

    :goto_2
    nop

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getQmgCodeById(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "ro.color.pinkgold"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "ro.color.blue"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "ro.color.green"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "WH"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getShutdownSoundPath()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "persist.sys.omc_respath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/media/audio/ui/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PowerOff.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "//system/csc_contents/PowerOff.ogg"

    return-object v1

    :cond_4
    const-string v1, "//system/media/audio/ui/PowerOff.wav"

    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    return-object v2

    :cond_5
    const-string v2, "//system/media/audio/ui/PowerOff.ogg"

    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    return-object v3

    :cond_6
    const/4 v3, 0x0

    return-object v3
.end method

.method private getSystemVolume()I
    .locals 7

    const/16 v0, -0x270f

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "shutdown"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :cond_0
    const-string v3, "ShutdownDialog"

    const-string v4, "!@systemVol:%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isCarrierActivated()Z
    .locals 2

    const-string v0, "/carrier/chameleon.xml"

    const-string v1, "Operators.SubscriberCarrierId"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v4

    invoke-virtual {v3, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ShutdownDialog"

    const-string/jumbo v5, "sound file.close"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "ShutdownDialog"

    const-string v5, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "ShutdownDialog"

    const-string v5, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_3
    move-exception v3

    :try_start_6
    const-string v4, "ShutdownDialog"

    const-string v5, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    nop

    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    const-string v5, "ShutdownDialog"

    const-string/jumbo v6, "sound file.close"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_1
    :goto_3
    throw v3
.end method

.method private readColorId()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readWindowType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    :cond_0
    return v0
.end method

.method private readWindowType()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "ShutdownDialog"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "ShutdownDialog"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :goto_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShutdownDialog"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw v3
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownDialog;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public drawState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public existAnim()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSound()Z
    .locals 3

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has sound for power off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2300(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2300(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v7, v6}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v9, "ShutdownDialog"

    const-string v10, "getBaseDisplaySize error"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v8, "ShutdownDialog"

    const-string v9, "BaseDisplaySize : %d %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v6, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v6, Landroid/graphics/Point;->x:I

    if-gtz v5, :cond_0

    iget v5, v6, Landroid/graphics/Point;->y:I

    if-lez v5, :cond_1

    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public prepareShutdown()V
    .locals 2

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v2}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-string v4, "ShutdownDialog"

    const-string v5, "!@Animation finish wait timed out"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const-string v4, "ShutdownDialog"

    const-string/jumbo v5, "wait for finish : sleep 100ms"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    const/4 v2, 0x1

    return v2
.end method
