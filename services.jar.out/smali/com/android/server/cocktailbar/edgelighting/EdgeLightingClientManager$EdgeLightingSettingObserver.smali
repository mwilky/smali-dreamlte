.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;
.super Landroid/database/ContentObserver;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingSettingObserver"
.end annotation


# static fields
.field private static final EDGE_LIGHTING_SETTING:Ljava/lang/String; = "edge_lighting"


# instance fields
.field mLastEnabled:Z

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-static {p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "edge_lighting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-static {p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "edge_lighting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public isEdgeLightingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "edge_lighting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
