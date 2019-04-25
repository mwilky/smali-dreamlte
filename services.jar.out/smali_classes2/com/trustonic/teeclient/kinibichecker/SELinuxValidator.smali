.class public Lcom/trustonic/teeclient/kinibichecker/SELinuxValidator;
.super Ljava/lang/Object;
.source "SELinuxValidator.java"


# static fields
.field private static final JELLY_BEAN_MR2:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSELinuxVersion()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "/sepolicy_version"

    invoke-static {v1}, Lcom/trustonic/teeclient/kinibichecker/Utils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\r\n]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method protected getSelinuxMode()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "/sys/fs/selinux/enforce"

    invoke-static {v0}, Lcom/trustonic/teeclient/kinibichecker/Utils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "/selinux/enforce"

    invoke-static {v1}, Lcom/trustonic/teeclient/kinibichecker/Utils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method public hasSELinuxBuiltIn()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "ro.build.selinux"

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    nop

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    return v4

    :cond_1
    return v1

    :catch_0
    move-exception v2

    return v1

    :catch_1
    move-exception v2

    return v1

    :catch_2
    move-exception v2

    return v1

    :catch_3
    move-exception v2

    return v1
.end method

.method public hasSELinuxEnforcing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/trustonic/teeclient/kinibichecker/SELinuxValidator;->getSelinuxMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trustonic/teeclient/kinibichecker/SELinuxValidator;->hasSELinuxBuiltIn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
