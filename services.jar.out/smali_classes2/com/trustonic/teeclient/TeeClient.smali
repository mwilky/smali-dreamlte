.class public Lcom/trustonic/teeclient/TeeClient;
.super Ljava/lang/Object;
.source "TeeClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MC_DEVICE_ID_DEFAULT:I = 0x0

.field private static final TEE_PROXY_SERVICE_PACKAGE:Ljava/lang/String; = "com.trustonic.teeproxyservice"


# instance fields
.field private application_context_:Landroid/content/Context;

.field private client_activity_:Landroid/app/Activity;

.field private jni_wrapper_:Lcom/trustonic/teeclient/TeeClientJni;

.field private kc_:Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/trustonic/teeclient/TeeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trustonic/teeclient/TeeClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->application_context_:Landroid/content/Context;

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->client_activity_:Landroid/app/Activity;

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->jni_wrapper_:Lcom/trustonic/teeclient/TeeClientJni;

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->kc_:Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;

    iput-object p1, p0, Lcom/trustonic/teeclient/TeeClient;->application_context_:Landroid/content/Context;

    new-instance v0, Lcom/trustonic/teeclient/TeeClientJni;

    invoke-direct {v0, p1}, Lcom/trustonic/teeclient/TeeClientJni;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->jni_wrapper_:Lcom/trustonic/teeclient/TeeClientJni;

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;

    invoke-direct {v0, p1}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->kc_:Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;

    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->application_context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private launchPlayStoreOnApp(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const/high16 v0, 0x10000000

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDeviceErrata()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/trustonic/teeclient/kinibichecker/TEEError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->kc_:Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->getDeviceErrata()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public isTeeProxyServiceInstalled()Z
    .locals 1

    const-string v0, "com.trustonic.teeproxyservice"

    invoke-direct {p0, v0}, Lcom/trustonic/teeclient/TeeClient;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTuiAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->kc_:Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isTuiAvailable()Z

    move-result v0

    return v0
.end method

.method public launchPlayStoreOnTeeProxyService(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/trustonic/teeclient/TeeClient;->client_activity_:Landroid/app/Activity;

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->client_activity_:Landroid/app/Activity;

    const-string v1, "com.trustonic.teeproxyservice"

    invoke-direct {p0, v0, v1}, Lcom/trustonic/teeclient/TeeClient;->launchPlayStoreOnApp(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public mcCloseDevice(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trustonic/teeclient/TeeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->jni_wrapper_:Lcom/trustonic/teeclient/TeeClientJni;

    invoke-virtual {v0, p1}, Lcom/trustonic/teeclient/TeeClientJni;->mcCloseDevice(I)V

    return-void
.end method

.method public mcOpenDevice(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trustonic/teeclient/TeeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/trustonic/teeclient/TeeClient;->jni_wrapper_:Lcom/trustonic/teeclient/TeeClientJni;

    invoke-virtual {v0, p1}, Lcom/trustonic/teeclient/TeeClientJni;->mcOpenDevice(I)V

    return-void
.end method
