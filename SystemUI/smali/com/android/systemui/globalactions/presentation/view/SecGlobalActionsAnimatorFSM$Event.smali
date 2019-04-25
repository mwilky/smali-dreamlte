.class public final enum Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;
.super Ljava/lang/Enum;
.source "SecGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

.field public static final enum CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

.field public static final enum HIDE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

.field public static final enum HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

.field public static final enum SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

.field public static final enum SHOW:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

.field public static final enum SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const-string v1, "SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const-string v1, "HIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const-string v1, "SHOW_CONFIRM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const-string v1, "HIDE_CONFIRM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const-string v1, "CONFIGURATION_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const-string v1, "SECURE_CONFIRM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    return-object v0
.end method
