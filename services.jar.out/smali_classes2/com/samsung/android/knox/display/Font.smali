.class public Lcom/samsung/android/knox/display/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Font"

    sput-object v0, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/display/Font;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method


# virtual methods
.method public getSystemActiveFont()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/display/Font;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemActiveFont!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemActiveFontSize()F
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/display/Font;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemFontSizes()[F
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/display/Font;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/display/Font;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getSystemFonts!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MiscPolicy.setSystemActiveFont"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/display/Font;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object v0, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v2, "Failed to copy file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/knox/IMiscPolicy;->setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v3, "Failed setSystemFont!!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public setSystemActiveFontSize(F)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MiscPolicy.setSystemActiveFontSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/display/Font;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/display/Font;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/display/Font;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IMiscPolicy;->setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/display/Font;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
