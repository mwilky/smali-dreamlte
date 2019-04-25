.class public final synthetic Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;

    invoke-direct {v0}, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;-><init>()V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;->INSTANCE:Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    check-cast p2, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-static {p1, p2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->lambda$static$4(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)I

    move-result p1

    return p1
.end method
