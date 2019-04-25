.class Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRCPInterfaceCallBack"
.end annotation


# static fields
.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENAMETOOLONG:I = -0x24

.field public static final ENOENT:I = -0x2

.field public static final ENOSPC:I = -0x1c

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method private changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/mnt/extSdCard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "^/mnt/extSdCard"

    const-string v2, "/mnt/sdcard"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "/storage/extSdCard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "^/storage/extSdCard"

    const-string v2, "/mnt/sdcard"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "/storage/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    const-string v3, "/storage/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changeExtSdPath(): npe has occured"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/BridgeProxy"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "srcCreateFile"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v7

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    const-string v8, " FILE opened : "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "dstCreateFile"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v7

    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v7

    move v7, v5

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    const-string v8, " FILE closed "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    nop

    invoke-virtual {v2, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    nop

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    nop

    :goto_2
    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_3

    :catchall_0
    move-exception v7

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_1
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BridgeFileNotFOundexception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_b
    throw v7
.end method

.method private getMoveToIntentList(Landroid/content/Intent;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v0, v6, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private isContainerStateIsValid(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Move to Personal mode. return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1, p1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get a persona info. moveToDstCId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Persona is superlocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Persona is partially created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Persona is removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Persona state is valid for moving files"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public cancel(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel() threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_CANCEL_FILE_OPERATION"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFiles(), Starting FileOperationsHandler service TASK_CANCEL_FILE_OPERATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public cancelCopyChunks(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "cancelCopyChunks"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCopyChunks() sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->cancelCopyChunks(J)V

    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning!!!!  copyChunks() is disabled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x2ed993

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "copyFile"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/bridge/BridgeProxy;->access$4300(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile(): Permissions (POLICY_NOT_ALLOWED)  or error for srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; exportCheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v2, 0x2

    invoke-static {v1, p3, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4300(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED) or error for destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; importCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "copyFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_COPY_FILES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srcFilePaths"

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "destFilePaths"

    move-object v3, p4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string v3, "callBackMessenger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move v4, p1

    if-nez p1, :cond_2

    move v4, p3

    :cond_2
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    return-wide v5
.end method

.method public copyFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "copyFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles2() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles2() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , SourceClassName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_COPY_FILES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srcFilePaths"

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "destFilePaths"

    move-object v3, p4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "sourceClassName"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string v3, "callBackMessenger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles2() ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move v4, p1

    if-nez p1, :cond_2

    move v4, p3

    :cond_2
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "copyFiles2(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    return-wide v5
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getErrorMessage"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    const/16 v1, -0x24

    if-eq p1, v1, :cond_1

    const/16 v1, -0x1c

    if-eq p1, v1, :cond_0

    const/16 v1, -0x10

    if-eq p1, v1, :cond_1

    const/16 v1, -0xd

    if-eq p1, v1, :cond_1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "UNDEFINED"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "SUCCESS"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "POLICY_NOT_ALLOWED"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "REGISTRATION_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "ENOSPC"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "UNDEFINED"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v2, "REGISTRATION_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4500(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1, v0}, Lcom/android/server/bridge/BridgeProxy;->access$4600(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    nop

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getErrorMessage(): cannot get error resource for resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "General error"

    return-object v1

    :pswitch_data_0
    .packed-switch -0xf4242
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFileInfo"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFileInfo(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isContainerIdIsValid(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(IIZ)Z

    move-result v0

    return v0
.end method

.method isContainerIdIsValid(IIZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-ltz p1, :cond_7

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    return v0

    :cond_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_2

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v0

    :cond_8
    if-eq p1, p2, :cond_9

    return v0

    :cond_9
    if-ltz p1, :cond_b

    if-gez p2, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_3
    return v0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "isFileExist"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isMoveFilesAllowed(II)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1, p1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1, p2}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isMoveFilesAllowed : user managed container. return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    :try_start_0
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, p2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_4
    :goto_1
    nop

    :goto_2
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesAllowed : retToKnox = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_1
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v7

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_4

    :catch_3
    move-exception v5

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_3
    nop

    :goto_4
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesAllowed : retToOwner = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "isMoveFilesAllowed : End of function. Return false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFile"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFile() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFile() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "moveFile() containerID is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    return v0

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerStateIsValid(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fileOperation() container state is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0, p3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$3802(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const v1, -0xf4241

    return v1

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isMoveFilesAllowed(II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "moveFile() policy is denied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    return v0

    :cond_3
    invoke-static {p2}, Lcom/android/server/bridge/util/FileUtils;->isAllowedFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "moveFile() not allowed file name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    return v0

    :cond_4
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0, p3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$3802(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_MOVE_FILES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srcFilePaths"

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "destFilePaths"

    move-object v3, p4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string v3, "callBackMessenger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveFiles ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public moveFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles2() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles2() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , SourceClassName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0, p3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$3802(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_MOVE_FILES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srcFilePaths"

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "destFilePaths"

    move-object v3, p4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "sourceClassName"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string v3, "callBackMessenger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveFiles2 ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "moveFiles2(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "moveFilesForApp"

    invoke-static {v0, v3}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v5

    :try_start_0
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveFilesForApp() srcContainerId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; srcFilePaths="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveFilesForApp() destContainerId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; destFilePaths="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    new-instance v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v10, p3

    :try_start_1
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    new-instance v0, Landroid/content/Intent;

    const-string v12, "com.sec.knox.bridge.MOVE_TO_KNOX"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    const-string/jumbo v0, "task"

    const-string v14, "TASK_MOVE_FILES"

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "requestApp"
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v14, p1

    :try_start_2
    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "srcContainerId"

    invoke-virtual {v13, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "destContainerId"

    invoke-virtual {v13, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "launchAfterLockCheck"

    invoke-virtual {v13, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_0

    const-string/jumbo v0, "fileCount"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/high16 v15, 0x10000000

    invoke-virtual {v12, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v15, 0xc8

    const/4 v7, 0x1

    if-lt v0, v15, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v15, :cond_1

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v8, " src_FILE_READ_OPERATION "

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-direct {v1, v9, v11}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "isFileCreated"

    invoke-virtual {v13, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "srcFilePath"

    const-string v8, "/data/misc/BridgeProxy/srcCreateFile"

    invoke-virtual {v13, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destFilePath"

    const-string v8, "/data/misc/BridgeProxy/dstCreateFile"

    invoke-virtual {v13, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v8

    const-string v15, "copyListToFile - IOException"

    invoke-static {v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_1
    const-string/jumbo v0, "srcFilePaths"

    invoke-virtual {v13, v0, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "destFilePaths"

    invoke-virtual {v13, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    const-string/jumbo v0, "moveToFor"

    const-string v8, "File"

    invoke-virtual {v13, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "KnoxIdNamePair"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-eq v3, v15, :cond_3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v15, 0x0

    return-wide v15

    :cond_3
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v15

    if-ne v15, v7, :cond_6

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v7, v15

    goto :goto_3

    :cond_4
    const-string v15, "destContainerId"

    invoke-virtual {v13, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFilesForApp() RESET | destContainerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mMoveToDstName"

    invoke-virtual {v13, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v15}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_6
    move-object/from16 v17, v0

    invoke-direct {v1, v12}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->getMoveToIntentList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v15, "move_to_knox"

    invoke-static {v7, v15}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v14, p1

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v10, p3

    :goto_6
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_7
    const-wide/16 v7, 0x0

    return-wide v7
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v4, "moveFilesForApp"

    invoke-static {v0, v4}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v4

    move v5, v3

    const/4 v6, 0x0

    move v7, v6

    :try_start_0
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveFilesForAppEx() srcContainerId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; srcFilePaths="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveFilesForAppEx() destContainerId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; destFilePaths="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveFilesForAppEx() reqApp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    new-instance v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_d

    move-object/from16 v11, p3

    :try_start_1
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v0

    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.sec.knox.bridge.MOVE_TO_KNOX"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    const/high16 v14, 0x10000000

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v15, v0

    const-string/jumbo v0, "task"

    const-string v14, "TASK_MOVE_FILES"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "requestApp"
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_c

    move/from16 v14, p1

    :try_start_2
    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "srcContainerId"

    invoke-virtual {v15, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "destContainerId"

    invoke-virtual {v15, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v2, :cond_0

    :try_start_3
    const-string/jumbo v0, "fileCount"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v15, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v25, v4

    move/from16 v21, v5

    goto/16 :goto_e

    :cond_0
    :goto_0
    :try_start_4
    const-string/jumbo v0, "launchAfterLockCheck"

    invoke-virtual {v15, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v13, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_b

    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-lt v0, v8, :cond_1

    :try_start_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_1

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v8, " src_FILE_READ_OPERATION "

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-direct {v1, v10, v12}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "isFileCreated"

    invoke-virtual {v15, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "srcFilePath"

    const-string v8, "/data/misc/BridgeProxy/srcCreateFile"

    invoke-virtual {v15, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destFilePath"

    const-string v8, "/data/misc/BridgeProxy/dstCreateFile"

    invoke-virtual {v15, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v8

    const-string v6, "copyListToFile - IOException"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_1
    goto :goto_2

    :cond_1
    :try_start_8
    const-string/jumbo v0, "srcFilePaths"

    invoke-virtual {v15, v0, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "destFilePaths"

    invoke-virtual {v15, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_b

    :goto_2
    :try_start_9
    const-string/jumbo v0, "moveToFor"

    const-string v6, "File"

    invoke-virtual {v15, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    const-string v8, "KNOX"
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_a

    const/4 v9, -0x1

    if-ne v3, v9, :cond_4

    :try_start_a
    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v2, "move_to_knox"

    invoke-static {v9, v2}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    move-object v2, v9

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v19, v18

    move-object/from16 v20, v2

    move/from16 v21, v5

    move-object/from16 v2, v19

    :try_start_b
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$4200(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    move/from16 v22, v7

    :try_start_c
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v23, v8

    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    :cond_2
    move/from16 v22, v7

    move-object/from16 v23, v8

    :goto_4
    move-object/from16 v2, v20

    move/from16 v5, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v22, v7

    move/from16 v25, v4

    goto/16 :goto_e

    :cond_3
    move/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v25, v4

    goto/16 :goto_e

    :cond_4
    move/from16 v21, v5

    move/from16 v22, v7

    :try_start_d
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_9

    if-eqz v2, :cond_5

    :try_start_e
    invoke-virtual {v6, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const-string v5, "Secure Folder"

    move-object v8, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v25, v4

    :goto_5
    move/from16 v7, v22

    goto/16 :goto_e

    :cond_5
    :goto_6
    :try_start_f
    invoke-virtual {v13, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_f} :catch_9

    if-eq v4, v5, :cond_7

    :try_start_10
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    :cond_6
    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_7
    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v13, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v16, 0x0

    return-wide v16

    :cond_7
    const/16 v2, -0x3e8

    if-ne v3, v2, :cond_9

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Need to Create secure Folder"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_8

    const-string/jumbo v2, "isSilent"

    const/4 v5, 0x1

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v13, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v13, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    :cond_8
    move/from16 v25, v4

    goto/16 :goto_b

    :cond_9
    :try_start_11
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_11} :catch_9

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v9, v21

    :goto_8
    :try_start_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_12} :catch_7

    if-eqz v16, :cond_a

    :try_start_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_13} :catch_5

    move-object v7, v2

    move-object/from16 v2, v24

    goto :goto_8

    :catch_5
    move-exception v0

    move/from16 v25, v4

    :goto_9
    move/from16 v21, v9

    goto/16 :goto_5

    :cond_a
    move-object/from16 v24, v2

    :try_start_14
    const-string v2, "destContainerId"

    invoke-virtual {v15, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_14} :catch_7

    move/from16 v25, v4

    :try_start_15
    const-string/jumbo v4, "moveFilesForAppEx() RESET | destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "mMoveToDstName"

    invoke-virtual {v15, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_b
    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_a
    iget-object v2, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_15} :catch_6

    nop

    move/from16 v21, v9

    goto :goto_b

    :catch_6
    move-exception v0

    goto/16 :goto_9

    :catch_7
    move-exception v0

    move/from16 v25, v4

    move/from16 v21, v9

    goto :goto_c

    :cond_c
    move/from16 v25, v4

    :try_start_16
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    invoke-direct {v1, v13}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->getMoveToIntentList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-static {v3, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    goto/16 :goto_5

    :cond_d
    :goto_b
    goto :goto_f

    :catch_9
    move-exception v0

    move/from16 v25, v4

    :goto_c
    move/from16 v7, v22

    goto :goto_e

    :catch_a
    move-exception v0

    move/from16 v25, v4

    move/from16 v21, v5

    move/from16 v22, v7

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_d

    :catch_c
    move-exception v0

    move/from16 v14, p1

    goto :goto_d

    :catch_d
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v11, p3

    :goto_d
    move/from16 v25, v4

    move/from16 v21, v5

    :goto_e
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move/from16 v22, v7

    :goto_f
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public moveUnlimitedFiles(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveUnlimitedFiles() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0, p2}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$3802(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_MOVE_FILES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "unlimitedMoveUri"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "isUnlimitedSharing"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Messenger;

    invoke-interface {p4}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string v3, "callBackMessenger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveUnlimitedFiles ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "moveUnlimitedFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public moveUnlimitedFiles2(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveUnlimitedFiles2() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mSourceClassName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0, p2}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$3802(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_MOVE_FILES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "unlimitedMoveUri"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "isUnlimitedSharing"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "sourceClassName"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Messenger;

    invoke-interface {p4}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string v3, "callBackMessenger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveUnlimitedFiles2 ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "moveUnlimitedFiles2(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v5, "moveFilesForApp"

    invoke-static {v0, v5}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v5

    move v6, v4

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveUnlimitedFilesForApp() srcContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; destContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string/jumbo v8, "null"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; fileCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "reqApp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.sec.knox.bridge.MOVE_TO_KNOX"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "task"

    const-string v11, "TASK_MOVE_FILES"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "requestApp"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v11, p1

    :try_start_1
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "srcContainerId"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "destContainerId"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "fileCount"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "moveToFor"

    const-string v12, "File"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "isUnlimitedSharing"

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v10, "unlimitedMoveUri"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-eq v5, v13, :cond_2

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v10}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v10}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v13}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v10}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v10

    iget-object v12, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v12}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-wide v7

    :cond_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v14}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    const-string v15, "KNOX"

    const/4 v7, -0x1

    if-ne v4, v7, :cond_5

    iget-object v7, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v8, "move_to_knox"

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    invoke-virtual {v14, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    move-object/from16 v17, v16

    move-object/from16 v10, v17

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-nez v12, :cond_3

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v2, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    nop

    move-object/from16 v2, p2

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v14, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const-string v7, "Secure Folder"

    move-object v15, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v6, v8

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    goto :goto_4

    :cond_8
    const-string v8, "destContainerId"

    invoke-virtual {v9, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "moveUnlimitedFilesForApp() RESET | destContainerId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "mMoveToDstName"

    invoke-virtual {v9, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v12}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v12}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_9
    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v12}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v12}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v10}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    :cond_a
    invoke-direct {v1, v0}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->getMoveToIntentList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v10, "move_to_knox"

    invoke-static {v8, v10}, Lcom/android/server/bridge/BridgeProxy;->access$4100(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/os/Parcelable;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v10}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v11, p1

    :goto_7
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_8
    const-wide/16 v7, 0x0

    return-wide v7
.end method
