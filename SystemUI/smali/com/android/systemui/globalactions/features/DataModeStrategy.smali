.class public Lcom/android/systemui/globalactions/features/DataModeStrategy;
.super Ljava/lang/Object;
.source "DataModeStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/DataModeStrategy;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/DataModeStrategy;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "data_mode"

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method
