.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    }
.end annotation


# instance fields
.field private final mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

.field private final mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

.field private mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

.field private mTriedOnCurrentStep:Z


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "route"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->UNDELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 44
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 45
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .line 46
    return-void
.end method


# virtual methods
.method public failRouteStep(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Packet could not be failed because it was already delivered successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->failedOnCurrentStep(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    .line 89
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->moveToNextStep()V

    .line 91
    :cond_1
    return-void
.end method

.method public getDeliveryHistory()Ljava/lang/String;
    .locals 7

    .prologue
    .line 121
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getRoutingStack()[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "stack":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 125
    .local v2, "stackItem":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "stackItem":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    return-object v0
.end method

.method public getRecordSize()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getState()Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    return-object v0
.end method

.method public hasMoreOptionsToTry()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 67
    return-void
.end method

.method public markTrashed()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->TRASHED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 74
    return-void
.end method

.method public routeToNext()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    .line 114
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getCurrentQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->enqueuePacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)Z

    move-result v0

    return v0
.end method
