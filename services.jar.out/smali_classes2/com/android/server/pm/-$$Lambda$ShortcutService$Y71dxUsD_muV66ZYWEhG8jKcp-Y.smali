.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$Y71dxUsD_muV66ZYWEhG8jKcp-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$Y71dxUsD_muV66ZYWEhG8jKcp-Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$Y71dxUsD_muV66ZYWEhG8jKcp-Y;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$Y71dxUsD_muV66ZYWEhG8jKcp-Y;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$Y71dxUsD_muV66ZYWEhG8jKcp-Y;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$Y71dxUsD_muV66ZYWEhG8jKcp-Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupShortcut$9(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
