.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field private browserInstalled:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAlreadyChecked:Z

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->DEBUG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "com.android.calendar"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getContactsPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private isBrowserInstalled()Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v0

    :cond_0
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.sec.android.app.sbrowser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.browser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    iget-boolean v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v2
.end method

.method private isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    return v0
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return v1
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    goto/16 :goto_1

    :cond_6
    goto/16 :goto_0

    :cond_7
    return-object p1

    :cond_8
    :goto_2
    const-string v2, "MumXmlDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public readFromCustomXml()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.product.name"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const/4 v10, 0x1

    if-eq v1, v10, :cond_13

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "row"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v2, v7}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v11, "knoxCore"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3500()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    :pswitch_1
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "row"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    move-object v2, v11

    goto/16 :goto_1

    :cond_5
    const-string v11, "column"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "value"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    const-string v11, "Name"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v11, "AppInstallList"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v11

    goto/16 :goto_1

    :cond_7
    const-string v11, "ProtectedPkgList"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v11

    goto/16 :goto_1

    :cond_8
    const-string v11, "GoogleAppsPkgList"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    goto/16 :goto_1

    :cond_9
    const-string v11, "application"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v5, :cond_11

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    const-string v11, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "com.android.contacts"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "com.samsung.contacts"

    move-object v3, v11

    :cond_a
    if-eqz v3, :cond_11

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v11, "protectedPkg"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v6, :cond_11

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    if-eqz v3, :cond_11

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v11, "disablePkg"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v7, :cond_11

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    if-eqz v3, :cond_11

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    const-string/jumbo v11, "knoxCore"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v11

    goto :goto_1

    :cond_e
    const-string/jumbo v11, "package"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v8, :cond_11

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v13, "allow"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_f
    iget-object v13, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v14, "disallow"

    invoke-interface {v13, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    if-eqz v11, :cond_10

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    :cond_10
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_1
    nop

    :cond_12
    :goto_2
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v10

    goto/16 :goto_0

    :cond_13
    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "MumXmlDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFromCustomXml EX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readFromXml()V
    .locals 43

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v0

    const-string/jumbo v0, "ro.product.name"

    move-object/from16 v21, v2

    const-string v2, "NONE"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v2, v20

    move/from16 v18, v5

    move-object/from16 v5, v17

    move/from16 v17, v4

    move-object/from16 v4, v16

    move/from16 v16, v3

    move-object/from16 v3, v21

    :goto_0
    move-object/from16 v24, v0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_b0

    const/16 v19, 0x0

    packed-switch v2, :pswitch_data_0

    move/from16 v25, v2

    move-object/from16 v41, v6

    move-object v6, v7

    move-object/from16 v37, v8

    move-object v8, v4

    move-object v4, v14

    move-object/from16 v14, v24

    goto/16 :goto_26

    :pswitch_0
    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move/from16 v25, v2

    const-string/jumbo v2, "row"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    if-eqz v10, :cond_2

    nop

    :goto_1
    move/from16 v2, v19

    move-object/from16 v26, v7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v27, v6

    const-string/jumbo v6, "group_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v19, v2, 0x1

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto :goto_1

    :cond_1
    move-object/from16 v27, v6

    goto :goto_2

    :cond_2
    move-object/from16 v27, v6

    move-object/from16 v26, v7

    :goto_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v3, v9}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v3, v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    :cond_8
    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v3, v15}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    :cond_9
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    :cond_a
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    iget-object v13, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v4

    move-object v13, v9

    move-object v4, v10

    move-object v15, v11

    move-object/from16 v14, v24

    move-object v9, v6

    move-object v10, v7

    move-object v11, v8

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    move-object v8, v2

    goto/16 :goto_27

    :cond_b
    move-object/from16 v27, v6

    move-object/from16 v26, v7

    const-string/jumbo v2, "provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v12, :cond_e

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v18, :cond_c

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v12, v7, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object/from16 v28, v2

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v12, v7, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    move/from16 v17, v2

    :goto_4
    move-object/from16 v2, v28

    goto :goto_3

    :cond_d
    invoke-interface {v12}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_5
    move-object v5, v2

    move-object/from16 v32, v4

    move-object v4, v14

    move-object/from16 v14, v24

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_27

    :cond_e
    move-object/from16 v37, v8

    move-object/from16 v6, v26

    move-object/from16 v41, v27

    move-object v8, v4

    move-object v4, v14

    move-object/from16 v14, v24

    goto/16 :goto_26

    :cond_f
    const-string/jumbo v2, "package"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v12, :cond_e

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v12, v7, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    nop

    move-object/from16 v2, v29

    goto :goto_6

    :cond_10
    invoke-interface {v12}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    const-string/jumbo v2, "knoxCore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v27, :cond_12

    move-object/from16 v2, v27

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3502(Ljava/util/List;)Ljava/util/List;

    goto :goto_7

    :cond_12
    move-object/from16 v2, v27

    :cond_13
    :goto_7
    const/4 v2, 0x0

    iget-object v6, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-object/from16 v30, v2

    instance-of v2, v7, Lcom/samsung/android/knox/container/BBCConfigurationType;

    if-eqz v2, :cond_14

    move-object/from16 v2, v30

    goto :goto_8

    :cond_14
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v31, v6

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3500()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    nop

    move-object/from16 v2, v30

    move-object/from16 v6, v31

    goto :goto_8

    :cond_15
    move-object/from16 v30, v2

    move-object/from16 v32, v4

    move-object v4, v14

    move-object/from16 v14, v24

    move-object/from16 v7, v26

    move-object/from16 v6, v30

    goto/16 :goto_27

    :cond_16
    move-object/from16 v2, v27

    const-string v6, "BadgePolicy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    move-object/from16 v6, v26

    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3602(Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    move-object v7, v0

    move-object v6, v2

    move-object/from16 v32, v4

    move-object v4, v14

    move-object/from16 v14, v24

    goto/16 :goto_27

    :cond_17
    move-object/from16 v6, v26

    move-object/from16 v41, v2

    move-object/from16 v37, v8

    move-object v8, v4

    move-object v4, v14

    move-object/from16 v14, v24

    goto/16 :goto_26

    :pswitch_1
    move/from16 v25, v2

    move-object v2, v6

    move-object v6, v7

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "row"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v32, v4

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "type"

    move-object/from16 v33, v15

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    new-instance v4, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/LightweightConfigurationType;-><init>()V

    move-object v3, v4

    :goto_9
    move-object/from16 v34, v14

    move-object/from16 v4, v23

    :cond_18
    :goto_a
    move-object/from16 v14, v24

    goto/16 :goto_25

    :cond_19
    sget-object v4, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    new-instance v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;-><init>()V

    move-object v3, v4

    goto :goto_9

    :cond_1a
    sget-object v4, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v4, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/BBCConfigurationType;-><init>()V

    move-object v3, v4

    goto :goto_9

    :cond_1b
    sget-object v4, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>()V

    move-object v3, v4

    goto :goto_9

    :cond_1c
    new-instance v4, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    move-object v3, v4

    goto :goto_9

    :cond_1d
    move-object/from16 v33, v15

    const-string v0, "column"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "value"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "name"

    move-object/from16 v34, v14

    const/4 v14, 0x0

    invoke-interface {v4, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "Name"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V

    :cond_1e
    :goto_b
    move-object/from16 v35, v13

    goto/16 :goto_e

    :cond_1f
    const-string v14, "UID"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_21

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    :cond_20
    :goto_c
    move/from16 v16, v14

    goto/16 :goto_a

    :cond_21
    const-string v14, "UserID"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-lt v14, v15, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto :goto_c

    :cond_22
    const-string v14, "PersonaIDs"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v14

    goto/16 :goto_a

    :cond_23
    const-string v14, "Version"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    if-eqz v3, :cond_1e

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto :goto_b

    :cond_24
    const-string v14, "MaximumTimeToLock"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto :goto_c

    :cond_25
    const-string v14, "KeyguardDisabledFeatures"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_26

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto :goto_c

    :cond_26
    const-string v14, "DefaultContainerLayout"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto :goto_c

    :cond_27
    const-string v14, "LayoutSwitchingAllowed"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v3, :cond_28

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    :cond_28
    :goto_d
    move/from16 v17, v14

    goto/16 :goto_a

    :cond_29
    const-string v14, "DefaultConfigType"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v3, :cond_28

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto :goto_d

    :cond_2a
    const-string v14, "PasswordMinimumLength"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_c

    :cond_2b
    const-string v14, "PasswordMinimumNonLetters"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_c

    :cond_2c
    const-string v14, "PasswordMinimumLetters"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_c

    :cond_2d
    const-string v14, "PasswordMinimumNumeric"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_c

    :cond_2e
    const-string v14, "PasswordMinimumUpperCase"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_c

    :cond_2f
    const-string v14, "PasswordMinimumLowerCase"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_30

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_c

    :cond_30
    const-string v14, "PasswordMinimumSymbols"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_c

    :cond_31
    const-string v14, "PasswordQuality"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_c

    :cond_32
    const-string v14, "MaximumFailedPasswordsForWipe"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_33

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_c

    :cond_33
    const-string v14, "MaximumCharacterOccurences"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_34

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_c

    :cond_34
    const-string v14, "MaximumCharacterSequenceLength"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_35

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_c

    :cond_35
    const-string v14, "MaximumNumericSequenceLength"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_36

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_20

    if-eqz v3, :cond_20

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_c

    :cond_36
    const-string v14, "SimplePasswordEnabled"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_37

    if-eqz v3, :cond_37

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_d

    :cond_37
    const-string v14, "MultifactorAuthEnabled"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_38

    if-eqz v3, :cond_38

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_d

    :cond_38
    const-string v14, "UserManaged"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_39

    if-eqz v3, :cond_39

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_d

    :cond_39
    const-string v14, "ForbiddenStrings"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v14

    goto/16 :goto_a

    :cond_3a
    const-string v14, "AppInstallList"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3b

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v14

    goto/16 :goto_a

    :cond_3b
    const-string v14, "ProtectedPkgList"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3c

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    goto/16 :goto_a

    :cond_3c
    const-string v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v14

    goto/16 :goto_a

    :cond_3d
    const-string v14, "FOTADisableAppsPkgList"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3e

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    goto/16 :goto_a

    :cond_3e
    const-string v14, "AppInstallListForFotaClone"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3f

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_b

    :cond_3f
    const-string v14, "AppDisableListForFotaClone"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_40

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_b

    :cond_40
    const-string v14, "PatternRestriction"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_43

    if-eqz v3, :cond_43

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_42

    :cond_41
    const/4 v0, 0x0

    :cond_42
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_43
    const-string v14, "CustomBadgeIcon"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_46

    if-eqz v3, :cond_46

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_45

    :cond_44
    const/4 v0, 0x0

    :cond_45
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_46
    const-string v14, "CustomHomeScreenWallpaper"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_49

    if-eqz v3, :cond_49

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_48

    :cond_47
    const/4 v0, 0x0

    :cond_48
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_49
    const-string v14, "EC"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4a

    if-eqz v3, :cond_4a

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerEnabled(Z)V

    goto/16 :goto_d

    :cond_4a
    const-string v14, "NameIcon"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4d

    if-eqz v3, :cond_4d

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4c

    :cond_4b
    const/4 v0, 0x0

    :cond_4c
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_4d
    const-string v14, "ECName"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_50

    if-eqz v3, :cond_50

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4f

    :cond_4e
    const/4 v0, 0x0

    :cond_4f
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerName(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_50
    const-string v14, "ECIcon"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_53

    if-eqz v3, :cond_53

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_52

    :cond_51
    const/4 v0, 0x0

    :cond_52
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_53
    const-string v14, "ECBadge"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_56

    if-eqz v3, :cond_56

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_55

    :cond_54
    const/4 v0, 0x0

    :cond_55
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_56
    const-string v14, "CustomLockScreenWallpaper"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_59

    if-eqz v3, :cond_59

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_58

    :cond_57
    const/4 v0, 0x0

    :cond_58
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_59
    const-string v14, "CustomStatusLabel"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5c

    if-eqz v3, :cond_5c

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5b

    :cond_5a
    const/4 v0, 0x0

    :cond_5b
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_5c
    const-string v14, "CustomStatusIcon"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5f

    if-eqz v3, :cond_5f

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5e

    :cond_5d
    const/4 v0, 0x0

    :cond_5e
    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_5f
    const-string v14, "FolderHeaderTitle"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_62

    if-eqz v3, :cond_62

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_61

    :cond_60
    const/4 v0, 0x0

    :cond_61
    instance-of v14, v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v14, :cond_18

    move-object v14, v3

    check-cast v14, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_62
    const-string v14, "FolderHeaderIcon"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_65

    if-eqz v3, :cond_65

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_64

    :cond_63
    const/4 v0, 0x0

    :cond_64
    instance-of v14, v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v14, :cond_18

    move-object v14, v3

    check-cast v14, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_65
    const-string v14, "FolderDisabledChangeLayout"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_68

    if-eqz v3, :cond_68

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_67

    :cond_66
    const/4 v0, 0x0

    :cond_67
    instance-of v14, v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v14, :cond_18

    move-object v14, v3

    check-cast v14, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_68
    const-string v14, "RCPDataSettings"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_69

    const/16 v18, 0x1

    if-nez v12, :cond_18

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    goto/16 :goto_a

    :cond_69
    const-string v14, "RCPAllowChangeDataSettings"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6a

    const/16 v18, 0x0

    if-nez v12, :cond_18

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    goto/16 :goto_a

    :cond_6a
    const-string v14, "RCPNotifSettings"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6b

    if-nez v12, :cond_1e

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    goto/16 :goto_a

    :cond_6b
    const-string v14, "AllowMultiwindowMode"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6c

    if-eqz v3, :cond_6c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_d

    :cond_6c
    const-string v14, "AllowTaskManager"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6d

    if-eqz v3, :cond_6d

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_d

    :cond_6d
    const-string v14, "AllowSettingsChanges"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6e

    if-eqz v3, :cond_6e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    instance-of v15, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v15, :cond_28

    move-object v15, v3

    check-cast v15, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_d

    :cond_6e
    const-string v14, "AllowStatusBarExpansion"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6f

    if-eqz v3, :cond_6f

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    instance-of v15, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v15, :cond_28

    move-object v15, v3

    check-cast v15, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_d

    :cond_6f
    const-string v14, "AllowHomeKey"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_70

    if-eqz v3, :cond_70

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    instance-of v15, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v15, :cond_28

    move-object v15, v3

    check-cast v15, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_d

    :cond_70
    const-string v14, "AllowClearAllNotification"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_71

    if-eqz v3, :cond_71

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    instance-of v15, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v15, :cond_28

    move-object v15, v3

    check-cast v15, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_d

    :cond_71
    const-string v14, "HideSystemBar"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_72

    if-eqz v3, :cond_72

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    instance-of v15, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v15, :cond_28

    move-object v15, v3

    check-cast v15, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_d

    :cond_72
    const-string v14, "WipeRecentTasks"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_73

    if-eqz v3, :cond_73

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    instance-of v15, v3, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v15, :cond_28

    move-object v15, v3

    check-cast v15, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_d

    :cond_73
    const-string v14, "BiometricAuthEnabled"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_75

    if-eqz v3, :cond_75

    iget-object v14, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v15, "type"

    move-object/from16 v35, v13

    const/4 v13, 0x0

    invoke-interface {v14, v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move/from16 v17, v14

    if-eqz v17, :cond_74

    if-lez v13, :cond_74

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    :cond_74
    move/from16 v16, v13

    goto :goto_10

    :cond_75
    move-object/from16 v35, v13

    const-string v13, "USBDebuggingAllowed"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_76

    if-eqz v3, :cond_76

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v3, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    move/from16 v17, v13

    goto :goto_10

    :cond_76
    :goto_e
    move-object/from16 v14, v24

    move-object/from16 v13, v35

    goto/16 :goto_25

    :cond_77
    move-object/from16 v35, v13

    move-object/from16 v34, v14

    const-string/jumbo v0, "persona"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-eqz v8, :cond_7a

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "id"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    move/from16 v16, v4

    :cond_79
    :goto_f
    move-object/from16 v4, v23

    :goto_10
    move-object/from16 v14, v24

    move-object/from16 v13, v35

    goto/16 :goto_25

    :cond_7a
    move-object/from16 v41, v2

    move-object/from16 v37, v8

    move-object/from16 v14, v24

    :goto_11
    move-object/from16 v8, v32

    move-object/from16 v15, v33

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    goto/16 :goto_24

    :cond_7b
    const-string/jumbo v0, "forbiddenString"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    if-eqz v9, :cond_7a

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "value"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_7c
    const-string v0, "cloneapplication"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    if-eqz v0, :cond_7a

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "remove"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7d

    const-string/jumbo v13, "true"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7d

    iget-object v13, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_7d
    iget-object v13, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    goto :goto_f

    :cond_7e
    const-string v0, "clonedisablePkg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    if-eqz v0, :cond_7a

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "reenable"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7f

    const-string/jumbo v13, "true"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7f

    iget-object v13, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_7f
    iget-object v13, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    goto/16 :goto_f

    :cond_80
    const-string v0, "application"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    if-eqz v10, :cond_8b

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.contacts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getContactsPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :cond_81
    const-string v4, "com.android.calendar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :cond_82
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_89

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "remove"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_83

    const-string/jumbo v13, "true"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_83

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v37, v8

    move-object/from16 v14, v24

    goto :goto_15

    :cond_83
    iget-object v13, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v14, "allow"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_86

    move-object/from16 v14, v24

    invoke-direct {v1, v14, v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_84

    goto :goto_14

    :cond_84
    const-string/jumbo v15, "systemAppOnly"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_85

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3300(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_85

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_85
    move-object/from16 v37, v8

    goto :goto_15

    :cond_86
    move-object/from16 v14, v24

    :goto_14
    iget-object v15, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v36, v4

    const-string/jumbo v4, "disallow"

    move-object/from16 v37, v8

    const/4 v8, 0x0

    invoke-interface {v15, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-direct {v1, v14, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_88

    :cond_87
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_88
    :goto_15
    goto :goto_16

    :cond_89
    move-object/from16 v37, v8

    move-object/from16 v14, v24

    :cond_8a
    :goto_16
    move-object/from16 v4, v23

    move-object/from16 v13, v35

    :goto_17
    move-object/from16 v8, v37

    goto/16 :goto_25

    :cond_8b
    move-object/from16 v37, v8

    move-object/from16 v14, v24

    move-object/from16 v41, v2

    move-object/from16 v8, v32

    move-object/from16 v15, v33

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    goto/16 :goto_24

    :cond_8c
    move-object/from16 v37, v8

    move-object/from16 v14, v24

    const-string/jumbo v0, "replace"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    if-eqz v10, :cond_8f

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "value"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    const-string v8, ""

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    move-object/from16 v22, v0

    move/from16 v0, v19

    :goto_18
    if-ge v0, v8, :cond_8e

    aget-object v13, v4, v0

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8d

    iget-object v15, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v4

    const-string/jumbo v4, "name"

    move/from16 v39, v8

    const/4 v8, 0x0

    invoke-interface {v15, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    const/4 v15, 0x1

    sub-int/2addr v8, v15

    invoke-interface {v10, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v4

    goto :goto_19

    :cond_8d
    move-object/from16 v38, v4

    move/from16 v39, v8

    const/4 v15, 0x1

    :goto_19
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v38

    move/from16 v8, v39

    goto :goto_18

    :cond_8e
    nop

    move-object/from16 v0, v22

    goto :goto_16

    :cond_8f
    move-object/from16 v41, v2

    goto/16 :goto_11

    :cond_90
    const-string/jumbo v0, "groupPkg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    if-eqz v10, :cond_8f

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "value"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_91

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "name"

    const/4 v15, 0x0

    invoke-interface {v4, v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_91
    goto :goto_1a

    :cond_92
    const-string/jumbo v0, "provider"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz v12, :cond_8f

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_93

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    goto/16 :goto_16

    :cond_94
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    if-eqz v2, :cond_98

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8a

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "allow"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_95

    invoke-direct {v1, v14, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_97

    :cond_95
    iget-object v8, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "disallow"

    const/4 v15, 0x0

    invoke-interface {v8, v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-eqz v4, :cond_96

    invoke-direct {v1, v14, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_97

    :cond_96
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    goto/16 :goto_16

    :cond_98
    if-eqz v12, :cond_8f

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_99

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    goto/16 :goto_16

    :cond_9a
    const-string/jumbo v0, "policy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    if-nez v6, :cond_9b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :cond_9b
    move-object v0, v6

    :goto_1b
    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v6, "name"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9c

    iget-object v6, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v8, "value"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :cond_9c
    move-object v6, v0

    :goto_1c
    move-object v0, v4

    goto/16 :goto_16

    :cond_9d
    const-string/jumbo v0, "property"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-eqz v5, :cond_8f

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "value"

    invoke-interface {v4, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9e

    if-eqz v4, :cond_9e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9e

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9e
    goto :goto_1c

    :cond_9f
    const-string/jumbo v0, "protectedPkg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    if-eqz v35, :cond_a1

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "name"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a0

    move-object/from16 v13, v35

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_a0
    move-object/from16 v13, v35

    :goto_1d
    move-object/from16 v4, v23

    goto/16 :goto_17

    :cond_a1
    move-object/from16 v13, v35

    move-object/from16 v41, v2

    move-object/from16 v8, v32

    move-object/from16 v15, v33

    move-object/from16 v4, v34

    goto/16 :goto_24

    :cond_a2
    move-object/from16 v13, v35

    const-string/jumbo v0, "disablePkg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    if-eqz v34, :cond_a9

    const/4 v0, 0x1

    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v8, "value"

    const/4 v15, 0x0

    invoke-interface {v4, v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a5

    const-string v8, " "

    const-string v15, ""

    invoke-virtual {v4, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v15, v8

    move/from16 v42, v19

    move/from16 v19, v0

    move/from16 v0, v42

    :goto_1e
    if-ge v0, v15, :cond_a4

    aget-object v20, v8, v0

    move-object/from16 v40, v20

    move-object/from16 v41, v2

    move-object/from16 v2, v40

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a3

    const/16 v19, 0x0

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v41

    goto :goto_1e

    :cond_a4
    move-object/from16 v41, v2

    move/from16 v0, v19

    goto :goto_1f

    :cond_a5
    move-object/from16 v41, v2

    :goto_1f
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v8, "name"

    const/4 v15, 0x0

    invoke-interface {v2, v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a8

    const-string v4, "com.android.chrome"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3400()Z

    move-result v4

    if-eqz v4, :cond_a6

    const/4 v0, 0x1

    :cond_a6
    if-eqz v0, :cond_a7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isBrowserInstalled()Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result v4

    if-nez v4, :cond_a7

    const/4 v0, 0x0

    :cond_a7
    if-eqz v0, :cond_a8

    move-object/from16 v4, v34

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_a8
    move-object/from16 v4, v34

    :goto_20
    move-object v0, v2

    move-object/from16 v34, v4

    goto :goto_23

    :cond_a9
    move-object/from16 v41, v2

    move-object/from16 v4, v34

    move-object/from16 v8, v32

    move-object/from16 v15, v33

    goto/16 :goto_24

    :cond_aa
    move-object/from16 v41, v2

    move-object/from16 v4, v34

    const-string/jumbo v0, "fotadisablePkg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    if-eqz v33, :cond_ad

    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v2, "name"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v8, "reenable"

    const/4 v15, 0x0

    invoke-interface {v2, v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ab

    const-string/jumbo v8, "true"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ab

    move-object/from16 v8, v32

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v33

    goto :goto_21

    :cond_ab
    move-object/from16 v8, v32

    move-object/from16 v15, v33

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    goto :goto_22

    :cond_ac
    move-object/from16 v8, v32

    move-object/from16 v15, v33

    :goto_22
    move-object/from16 v34, v4

    move-object/from16 v32, v8

    move-object/from16 v33, v15

    :goto_23
    move-object/from16 v4, v23

    move-object/from16 v8, v37

    move-object/from16 v2, v41

    goto :goto_25

    :cond_ad
    move-object/from16 v8, v32

    move-object/from16 v15, v33

    goto :goto_24

    :cond_ae
    move-object/from16 v8, v32

    move-object/from16 v15, v33

    const-string/jumbo v0, "knoxCore"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object/from16 v34, v4

    move-object/from16 v32, v8

    move-object/from16 v33, v15

    move-object/from16 v0, v22

    goto/16 :goto_1d

    :cond_af
    :goto_24
    move-object/from16 v34, v4

    move-object/from16 v32, v8

    move-object/from16 v33, v15

    move-object/from16 v0, v22

    move-object/from16 v4, v23

    move-object/from16 v8, v37

    move-object/from16 v2, v41

    :goto_25
    move-object/from16 v22, v0

    move-object/from16 v23, v4

    move-object v7, v6

    move-object/from16 v15, v33

    move-object/from16 v4, v34

    move-object v6, v2

    goto :goto_27

    :goto_26
    move-object v7, v6

    move-object/from16 v32, v8

    move-object/from16 v8, v37

    move-object/from16 v6, v41

    :goto_27
    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    move-object v0, v14

    move-object v14, v4

    move-object/from16 v4, v32

    goto/16 :goto_0

    :cond_b0
    goto :goto_28

    :catch_0
    move-exception v0

    const-string v2, "MumXmlDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFromXml EX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-void
.end method

.method public writeToXml()V
    .locals 25

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enterprisedata.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    const/4 v0, 0x0

    move-object v2, v0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v3

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v8, "utf-8"

    invoke-interface {v3, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "table"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "name"

    const-string v10, "MUMContainerType"

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v9, p0

    :try_start_1
    iget-object v10, v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_48

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    const-string/jumbo v12, "row"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    instance-of v12, v11, Lcom/samsung/android/knox/container/LightweightConfigurationType;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v12, :cond_0

    :try_start_2
    const-string/jumbo v12, "type"

    sget-object v13, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_18

    :cond_0
    :try_start_3
    instance-of v12, v11, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v12, :cond_1

    :try_start_4
    const-string/jumbo v12, "type"

    sget-object v13, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_1
    :try_start_5
    instance-of v12, v11, Lcom/samsung/android/knox/container/BBCConfigurationType;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v12, :cond_2

    :try_start_6
    const-string/jumbo v12, "type"

    sget-object v13, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :cond_2
    :try_start_7
    instance-of v12, v11, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v12, :cond_3

    :try_start_8
    const-string/jumbo v12, "type"

    sget-object v13, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :cond_3
    :try_start_9
    const-string/jumbo v12, "type"

    sget-object v13, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v12
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move v5, v12

    if-ltz v5, :cond_4

    :try_start_a
    const-string v12, "column"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "name"

    const-string v13, "UID"

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "column"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :cond_4
    :try_start_b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v12
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move v5, v12

    const/4 v12, -0x1

    if-lt v5, v12, :cond_5

    :try_start_c
    const-string v12, "column"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "name"

    const-string v13, "UserID"

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "column"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :cond_5
    :try_start_d
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v12
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    if-eqz v12, :cond_7

    :try_start_e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "PersonaIDs"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    const-string/jumbo v15, "persona"

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "id"

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "persona"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const-string v4, "column"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :cond_7
    :try_start_f
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    if-eqz v4, :cond_8

    :try_start_10
    const-string v6, "column"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    const-string v13, "Name"

    invoke-interface {v3, v0, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "value"

    invoke-interface {v3, v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "column"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :cond_8
    :try_start_11
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "DefaultConfigType"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v7
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    move v5, v7

    if-ltz v5, :cond_9

    :try_start_12
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "DefaultContainerLayout"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    :cond_9
    :try_start_13
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "LayoutSwitchingAllowed"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v7
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    move-object v4, v7

    if-eqz v4, :cond_a

    :try_start_14
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "Version"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-interface {v3, v0, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    :cond_a
    :try_start_15
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v7
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    move v5, v7

    if-eqz v5, :cond_b

    :try_start_16
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "MaximumTimeToLock"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    :cond_b
    :try_start_17
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v7
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3

    move v5, v7

    if-eqz v5, :cond_c

    :try_start_18
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumLength"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    :cond_c
    :try_start_19
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v7
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3

    move v5, v7

    if-eqz v5, :cond_d

    :try_start_1a
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumNonLetters"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    :cond_d
    :try_start_1b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v7
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3

    move v5, v7

    if-eqz v5, :cond_e

    :try_start_1c
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumLetters"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    :cond_e
    :try_start_1d
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v7
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3

    move v5, v7

    if-eqz v5, :cond_f

    :try_start_1e
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumNumeric"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0

    :cond_f
    :try_start_1f
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v7
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_3

    move v5, v7

    if-eqz v5, :cond_10

    :try_start_20
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumUpperCase"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0

    :cond_10
    :try_start_21
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v7
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_3

    move v5, v7

    if-eqz v5, :cond_11

    :try_start_22
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumLowerCase"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0

    :cond_11
    :try_start_23
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v7
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_3

    move v5, v7

    if-eqz v5, :cond_12

    :try_start_24
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordMinimumSymbols"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0

    :cond_12
    :try_start_25
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v7
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_3

    move v5, v7

    if-eqz v5, :cond_13

    :try_start_26
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "PasswordQuality"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_0

    :cond_13
    :try_start_27
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v7
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_3

    move v5, v7

    if-eqz v5, :cond_14

    :try_start_28
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "MaximumFailedPasswordsForWipe"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_0

    :cond_14
    :try_start_29
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v7
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_3

    move v5, v7

    if-eqz v5, :cond_15

    :try_start_2a
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "MaximumCharacterOccurences"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_0

    :cond_15
    :try_start_2b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v7
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_3

    move v5, v7

    if-eqz v5, :cond_16

    :try_start_2c
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "MaximumCharacterSequenceLength"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_0

    :cond_16
    :try_start_2d
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v7
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_3

    move v5, v7

    if-eqz v5, :cond_17

    :try_start_2e
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "MaximumNumericSequenceLength"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_0

    :cond_17
    :try_start_2f
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v7
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_3

    move v5, v7

    if-ltz v5, :cond_18

    :try_start_30
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "KeyguardDisabledFeatures"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_0

    :cond_18
    :try_start_31
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_3

    if-nez v7, :cond_19

    :try_start_32
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "SimplePasswordEnabled"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_0

    :cond_19
    :try_start_33
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_3

    if-eqz v7, :cond_1a

    :try_start_34
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "MultifactorAuthEnabled"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_0

    :cond_1a
    :try_start_35
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_3

    if-eqz v7, :cond_1b

    :try_start_36
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "UserManaged"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_0

    :cond_1b
    :try_start_37
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v7

    move v5, v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_3

    if-eqz v7, :cond_1c

    if-lez v5, :cond_1c

    :try_start_38
    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    const-string v13, "BiometricAuthEnabled"

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "type"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "column"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_0

    :cond_1c
    :try_start_39
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v7
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_3

    if-eqz v7, :cond_1e

    :try_start_3a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1e

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "ForbiddenStrings"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v15, "forbiddenString"

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "value"

    invoke-interface {v3, v0, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "forbiddenString"

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    :cond_1d
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_0

    :cond_1e
    :try_start_3b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v13
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_1f

    :try_start_3c
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "PatternRestriction"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_0

    :cond_1f
    :try_start_3d
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v13
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_20

    :try_start_3e
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "CustomBadgeIcon"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_0

    :cond_20
    :try_start_3f
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v13
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_21

    :try_start_40
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "CustomHomeScreenWallpaper"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_0

    :cond_21
    :try_start_41
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v6, v13

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "EC"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v13
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_22

    :try_start_42
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "NameIcon"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_0

    :cond_22
    :try_start_43
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    move-result-object v13
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_23

    :try_start_44
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "ECName"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_0

    :cond_23
    :try_start_45
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v13
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_24

    :try_start_46
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "ECIcon"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_0

    :cond_24
    :try_start_47
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v13
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_25

    :try_start_48
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "ECBadge"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_0

    :cond_25
    :try_start_49
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v13
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_26

    :try_start_4a
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "CustomLockScreenWallpaper"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_0

    :cond_26
    :try_start_4b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v13
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_27

    :try_start_4c
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "CustomStatusLabel"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_0

    :cond_27
    :try_start_4d
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v13
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_3

    move-object v4, v13

    if-eqz v4, :cond_28

    :try_start_4e
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "CustomStatusIcon"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-interface {v3, v0, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_0

    :cond_28
    :try_start_4f
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v6, v13

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_3

    if-eq v13, v8, :cond_29

    :try_start_50
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "AllowMultiwindowMode"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_0

    :cond_29
    :try_start_51
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v6, v13

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_3

    if-eq v13, v8, :cond_2a

    :try_start_52
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "AllowTaskManager"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_0

    :cond_2a
    :try_start_53
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v6, v13

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_3

    if-eqz v13, :cond_2b

    :try_start_54
    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    const-string v14, "USBDebuggingAllowed"

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "column"

    invoke-interface {v3, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_0

    :cond_2b
    :try_start_55
    instance-of v13, v11, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_3

    if-eqz v13, :cond_31

    :try_start_56
    move-object v13, v11

    check-cast v13, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v6, v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2c

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "AllowSettingsChanges"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2c
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v6, v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eq v14, v8, :cond_2d

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "AllowStatusBarExpansion"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2d
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v6, v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2e

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "AllowHomeKey"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2e
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v6, v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2f

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "AllowClearAllNotification"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2f
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v6, v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_30

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "HideSystemBar"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_30
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v6, v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_31

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "WipeRecentTasks"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_0

    :cond_31
    :try_start_57
    instance-of v13, v11, Lcom/samsung/android/knox/container/LightweightConfigurationType;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_3

    if-eqz v13, :cond_34

    :try_start_58
    move-object v13, v11

    check-cast v13, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    if-eqz v4, :cond_32

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "FolderHeaderTitle"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-interface {v3, v0, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_32
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    if-eqz v4, :cond_33

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "FolderHeaderIcon"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-interface {v3, v0, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_33
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    if-eqz v4, :cond_34

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "FolderDisabledChangeLayout"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "value"

    invoke-interface {v3, v0, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_0

    :cond_34
    :try_start_59
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_37

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_37

    const-string v14, "column"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    const-string v15, "AppInstallList"

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_59} :catch_3

    if-eqz v15, :cond_35

    :try_start_5a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v8, "application"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v3, v0, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "application"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_0

    nop

    const/4 v8, 0x1

    goto :goto_4

    :cond_35
    :try_start_5b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_36

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_36

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_36

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v0, "application"
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5b} :catch_3

    move-object/from16 v16, v1

    const/4 v1, 0x0

    :try_start_5c
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    invoke-interface {v3, v1, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "remove"

    const-string/jumbo v1, "true"

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "application"

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v1, v16

    move-object/from16 v4, v17

    const/4 v0, 0x0

    goto :goto_5

    :cond_36
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    const-string v0, "column"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    :cond_37
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    :goto_6
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_39

    const-string v1, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "name"

    const-string v8, "ProtectedPkgList"

    invoke-interface {v3, v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "protectedPkg"

    const/4 v13, 0x0

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v3, v13, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "protectedPkg"

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    :cond_38
    const-string v1, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_39
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    const-string v1, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "name"

    const-string v8, "GoogleAppsPkgList"

    invoke-interface {v3, v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "disablePkg"

    const/4 v13, 0x0

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v3, v13, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "disablePkg"

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_3a
    const-string v1, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3b
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    const-string v1, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "name"

    const-string v8, "FOTADisableAppsPkgList"

    invoke-interface {v3, v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "fotadisablePkg"

    const/4 v13, 0x0

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v3, v13, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "fotadisablePkg"

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    :cond_3c
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v13, "fotadisablePkg"

    const/4 v14, 0x0

    invoke-interface {v3, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    invoke-interface {v3, v14, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "reenable"

    const-string/jumbo v15, "true"

    invoke-interface {v3, v14, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "fotadisablePkg"

    invoke-interface {v3, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    :cond_3d
    const-string v4, "column"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3e
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    const/4 v4, 0x0

    const-string v8, "column"

    const/4 v13, 0x0

    invoke-interface {v3, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    const-string v14, "RCPDataSettings"

    invoke-interface {v3, v13, v8, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_40

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object v4, v14

    const-string/jumbo v14, "provider"

    const/4 v15, 0x0

    invoke-interface {v3, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    invoke-interface {v3, v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    move-object/from16 v18, v0

    const-string/jumbo v0, "property"

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    iget-object v1, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "property"

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v4, v20

    goto :goto_c

    :cond_3f
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    const-string/jumbo v0, "provider"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v4, v20

    goto :goto_b

    :cond_40
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    const-string v0, "column"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_d

    :cond_41
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    :goto_d
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/4 v1, 0x0

    const-string v4, "column"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    const-string v13, "RCPAllowChangeDataSettings"

    invoke-interface {v3, v8, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object v1, v13

    const-string/jumbo v13, "provider"

    const/4 v14, 0x0

    invoke-interface {v3, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    invoke-interface {v3, v14, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    const-string/jumbo v15, "property"

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    iget-object v1, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v3, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "property"

    invoke-interface {v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    goto :goto_f

    :cond_42
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    const-string/jumbo v0, "provider"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    goto :goto_e

    :cond_43
    move-object/from16 v21, v0

    const-string v0, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_10

    :cond_44
    move-object/from16 v21, v0

    :goto_10
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    const/4 v1, 0x0

    const-string v4, "column"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    const-string v13, "RCPNotifSettings"

    invoke-interface {v3, v8, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object v1, v13

    const-string/jumbo v13, "package"

    const/4 v14, 0x0

    invoke-interface {v3, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "name"

    invoke-interface {v3, v14, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_45

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    const-string/jumbo v15, "property"

    move-object/from16 v23, v0

    const/4 v0, 0x0

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v24, v1

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    iget-object v1, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v3, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "property"

    invoke-interface {v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    goto :goto_12

    :cond_45
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    goto :goto_11

    :cond_46
    move-object/from16 v23, v0

    const-string v0, "column"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_13

    :cond_47
    move-object/from16 v23, v0

    :goto_13
    const-string/jumbo v0, "row"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object v7, v6

    move-object/from16 v1, v16

    move-object/from16 v6, v17

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_48
    move-object/from16 v16, v1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "knoxCore"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "package"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    invoke-interface {v3, v8, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "package"

    invoke-interface {v3, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14

    :cond_49
    const-string/jumbo v0, "knoxCore"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4a
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3600()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "BadgePolicy"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3600()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "policy"

    const/4 v10, 0x0

    invoke-interface {v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-interface {v3, v10, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "value"

    const/4 v12, 0x1

    aget-object v13, v4, v12

    invoke-interface {v3, v10, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "policy"

    invoke-interface {v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_15

    :cond_4b
    const-string v0, "BadgePolicy"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4c
    const-string/jumbo v0, "table"

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_2

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5d} :catch_1

    goto/16 :goto_16

    :catch_1
    move-exception v0

    :try_start_5e
    const-string v1, "MumXmlDataParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in Write to XML sync FD "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_2

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    goto/16 :goto_17

    :catch_4
    move-exception v0

    move-object/from16 v9, p0

    :goto_17
    move-object/from16 v16, v1

    :goto_18
    move-object v1, v0

    if-eqz v2, :cond_4d

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_5f} :catch_5

    goto/16 :goto_19

    :catch_5
    move-exception v0

    goto/16 :goto_1a

    :cond_4d
    :goto_19
    nop

    :goto_1a
    return-void
.end method
