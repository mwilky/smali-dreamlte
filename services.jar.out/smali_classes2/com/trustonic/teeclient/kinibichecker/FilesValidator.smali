.class public Lcom/trustonic/teeclient/kinibichecker/FilesValidator;
.super Ljava/lang/Object;
.source "FilesValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValidMcRegistryPermissions(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFolderPermissions(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "drwxrwxr-x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_0

    const-string/jumbo v2, "rw"

    invoke-static {v1, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_0
    const-string/jumbo v2, "system"

    invoke-static {v1, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    const-string/jumbo v2, "rw"

    invoke-static {v1, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method


# virtual methods
.method public getMcSocketsPermissions(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/dev/mobicore"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFilePermissions(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "/dev/mobicore-user"

    invoke-static {v1, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFilePermissions(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMcSystemRegistryPermissions()Ljava/lang/String;
    .locals 2

    const-string v0, "/system/app/mcRegistry"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFolderPermissions(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTUI()Z
    .locals 1

    const-string v0, "/dev/t-base-tui"

    invoke-static {v0}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFileAvailability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasValidMcNodePermissions()Z
    .locals 7

    const-string v0, "/dev/mobicore"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFilePermissions(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/dev/mobicore-user"

    invoke-static {v2, v1}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFilePermissions(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const-string/jumbo v4, "rw"

    invoke-static {v2, v4}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ge v4, v6, :cond_0

    const-string v4, "crwx"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "system"

    invoke-static {v0, v4}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_3

    :cond_0
    const-string/jumbo v4, "rw"

    invoke-static {v2, v4}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ge v4, v6, :cond_2

    const-string v4, "crw-rw-rw-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "system"

    invoke-static {v2, v4}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ge v4, v3, :cond_2

    :cond_1
    const-string/jumbo v4, "rw"

    invoke-static {v2, v4}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_3

    const-string/jumbo v4, "system"

    invoke-static {v2, v4}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lt v4, v3, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v1
.end method

.method public hasValidMcRegistryPermissionsExt()Z
    .locals 1

    const-string v0, "/data/app/mcRegistry"

    invoke-direct {p0, v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->isValidMcRegistryPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/data/misc/mcRegistry"

    invoke-direct {p0, v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->isValidMcRegistryPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/vendor/app/mcRegistry"

    invoke-direct {p0, v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->isValidMcRegistryPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasValidMcSystemRegistryPermissions()Z
    .locals 4

    invoke-virtual {p0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->getMcSystemRegistryPermissions()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v2, "rw"

    invoke-static {v0, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lt v2, v1, :cond_1

    const-string/jumbo v2, "root"

    invoke-static {v0, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "system"

    invoke-static {v0, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "rw"

    invoke-static {v0, v2}, Lcom/trustonic/teeclient/kinibichecker/Utils;->countOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValidRootPA()Z
    .locals 1

    const-string v0, "/system/lib/libcommonpawrapper.so"

    invoke-static {v0}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFileAvailability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/system/lib/libcurl.so"

    invoke-static {v0}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFileAvailability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/lib64/libcurl.so"

    invoke-static {v0}, Lcom/trustonic/teeclient/kinibichecker/Utils;->checkFileAvailability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
