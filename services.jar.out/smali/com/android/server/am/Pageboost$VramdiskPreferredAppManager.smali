.class final Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskPreferredAppManager"
.end annotation


# static fields
.field private static ENABLED:Z

.field private static mApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCorrectness:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.pageboost.vramdisk.prefferedapp.enabled"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->mApps:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->mCorrectness:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->ENABLED:Z

    return v0
.end method

.method public static gatherApps(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    sput-object p0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->mApps:Ljava/util/LinkedList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->mCorrectness:Z

    return-void
.end method

.method public static getPreferredApps()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->mCorrectness:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->mApps:Ljava/util/LinkedList;

    return-object v0
.end method
