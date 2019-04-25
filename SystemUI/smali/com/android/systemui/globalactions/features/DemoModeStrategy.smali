.class public Lcom/android/systemui/globalactions/features/DemoModeStrategy;
.super Ljava/lang/Object;
.source "DemoModeStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;


# instance fields
.field private final mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

.field private final mToastController:Lcom/android/systemui/globalactions/util/ToastController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/DemoModeStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/DemoModeStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    return-void
.end method


# virtual methods
.method public onPressEmergencyModeAction()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/DemoModeStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/DemoModeStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v2, 0x10403d7

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2
.end method
