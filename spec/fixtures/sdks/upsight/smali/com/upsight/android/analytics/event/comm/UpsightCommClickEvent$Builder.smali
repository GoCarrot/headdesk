.class public Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCommClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private upsightData:Lcom/google/gson/JsonObject;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/Integer;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 41
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    .line 42
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addDynamicData(Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .locals 5
    .param p1, "value"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    iget-object v4, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 64
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    :cond_0
    return-object p0
.end method

.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->build()Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;

    const-string v1, "upsight.comm.click"

    iget-object v2, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    iget-object v3, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;-><init>(Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .locals 2
    .param p1, "msgCampaignId"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->upsightData:Lcom/google/gson/JsonObject;

    const-string v1, "msg_campaign_id"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 50
    return-object p0
.end method
