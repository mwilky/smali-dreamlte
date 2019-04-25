.class final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$bXuJGR0fITXNwGnQfQHv9KS-XgY()Landroid/util/ArrayMap;
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForTarget$0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android"

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$getOverlaysForTarget$1(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForUser$2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android"

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$getOverlaysForUser$3(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForUser$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getUsers$5(Ljava/lang/Object;)I
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectWhereTarget$7(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectWhereUser$6(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private select(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/stream/Stream<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$mq-CHAn1jQBVquxuOUv0eQANHIY;

    invoke-direct {v2, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$mq-CHAn1jQBVquxuOUv0eQANHIY;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private selectWhereUser(I)Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bX7CTrJVR3B_eQmD43OOHtRIxgw;

    invoke-direct {v2, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bX7CTrJVR3B_eQmD43OOHtRIxgw;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<none>"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "mPackageName.......: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "mUserId............: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v5, "mTargetPackageName.: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "mBaseCodePath......: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "mState.............: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    invoke-static {v5}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "mIsEnabled.........: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v5, "mIsStatic..........: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v5, "mPriority..........: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v5, "mCategory..........: "

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "}"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getEnabled(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$ATr0DZmWpSWdKD0COw4t2qS-DRk;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$ATr0DZmWpSWdKD0COw4t2qS-DRk;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getOverlaysForUser(I)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$jZUujzDxrP0hpAqUxnqEf-b-nQc;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$jZUujzDxrP0hpAqUxnqEf-b-nQc;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;

    sget-object v3, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getState(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUsers()[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    return-void
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V
    .locals 13

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    if-eqz p6, :cond_4

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    iget-object v5, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_0
    move v4, v5

    if-ltz v4, :cond_2

    iget-object v5, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p7

    if-gt v6, v7, :cond_1

    goto :goto_1

    :cond_0
    move/from16 v7, p7

    :cond_1
    add-int/lit8 v5, v4, -0x1

    goto :goto_0

    :cond_2
    move/from16 v7, p7

    :goto_1
    add-int/lit8 v5, v4, 0x1

    :try_start_1
    iget-object v6, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    goto :goto_3

    :cond_4
    move/from16 v7, p7

    iget-object v4, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move/from16 v7, p7

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method persist(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method printAllItems()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OverlayManager"

    const-string v2, "OverlayManagerSettings printAllItems "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTargetPackageName.: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBaseCodePath......: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mState.............: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v6

    invoke-static {v6}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsEnabled.........: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OverlayManager"

    const-string/jumbo v5, "}"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method remove(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUser(I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    if-ne v4, p1, :cond_1

    sget-boolean v4, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing overlay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from settings because user was removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method restore(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCategory(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setEnabled(Ljava/lang/String;IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v3

    :cond_1
    :goto_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v0

    return v2

    :cond_3
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eq v1, v5, :cond_4

    move v2, v6

    nop

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setState(Ljava/lang/String;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
