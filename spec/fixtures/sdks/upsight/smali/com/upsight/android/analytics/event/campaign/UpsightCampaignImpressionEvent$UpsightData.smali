.class Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCampaignImpressionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field adGameId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_game_id"
    .end annotation
.end field

.field adTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_type_id"
    .end annotation
.end field

.field ads:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ads"
    .end annotation
.end field

.field campaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "campaign_id"
    .end annotation
.end field

.field contentId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_id"
    .end annotation
.end field

.field contentTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_type_id"
    .end annotation
.end field

.field creativeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creative_id"
    .end annotation
.end field

.field impressionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impression_id"
    .end annotation
.end field

.field ordinal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ordinal"
    .end annotation
.end field

.field scope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field streamId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_id"
    .end annotation
.end field

.field streamStartTs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_start_ts"
    .end annotation
.end field

.field testDevice:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "test_device"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->ordinal:Ljava/lang/Integer;

    .line 95
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->impressionId:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    .line 97
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->creativeId:Ljava/lang/Integer;

    .line 98
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    .line 99
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adTypeId:Ljava/lang/Integer;

    .line 100
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adGameId:Ljava/lang/Integer;

    .line 102
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$900(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->scope:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$1000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 105
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$1100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    .line 106
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$1200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentTypeId:Ljava/lang/Integer;

    .line 107
    return-void
.end method


# virtual methods
.method public getAdGameId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adGameId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdTypeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAds()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->fromJsonArray(Lcom/google/gson/JsonArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentTypeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->ordinal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method
