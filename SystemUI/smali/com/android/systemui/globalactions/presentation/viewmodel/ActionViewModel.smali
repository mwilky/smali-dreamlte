.class public interface abstract Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;
.super Ljava/lang/Object;
.source "ActionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    }
.end annotation


# virtual methods
.method public abstract getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public abstract onPress()V
.end method

.method public onPressSecureConfirm()V
    .locals 0

    return-void
.end method

.method public abstract setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V
.end method

.method public setIcon(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public setIntentAction(I)V
    .locals 0

    return-void
.end method

.method public setState(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateState()V
    .locals 0

    return-void
.end method
