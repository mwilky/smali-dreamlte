.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;
.super Landroid/database/ContentObserver;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationSettingObserver"
.end annotation


# instance fields
.field private mBlacklist:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$502(Z)Z

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onAuthenticationBlocked(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$502(Z)Z

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onAuthenticationBlocked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
