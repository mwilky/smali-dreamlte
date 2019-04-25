.class public Lcom/android/systemui/globalactions/presentation/viewmodel/SimpleTextActionViewModel;
.super Ljava/lang/Object;
.source "SimpleTextActionViewModel.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SimpleTextActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .locals 0

    return-void
.end method

.method public setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SimpleTextActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
