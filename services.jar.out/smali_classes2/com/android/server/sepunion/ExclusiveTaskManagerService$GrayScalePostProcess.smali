.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService$GrayScalePostProcess;
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
    name = "GrayScalePostProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$GrayScalePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPostProcess(Landroid/content/Context;I)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p2, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$GrayScalePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    const/4 v5, 0x4

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v5, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v5, v2}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    :goto_2
    return v2
.end method
