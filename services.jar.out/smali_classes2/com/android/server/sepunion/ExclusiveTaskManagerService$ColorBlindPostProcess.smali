.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorBlindPostProcess;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorBlindPostProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorBlindPostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPostProcess(Landroid/content/Context;I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorBlindPostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "color_blind_user_parameter"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    :goto_2
    return v1
.end method
