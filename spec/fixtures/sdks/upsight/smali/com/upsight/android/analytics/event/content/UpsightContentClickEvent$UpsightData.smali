.class Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightContentClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field ads:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ads"
    .end annotation
.end field

.field contentId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_id"
    .end annotation
.end field

.field impressionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impression_id"
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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    .line 69
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->impressionId:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->scope:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 74
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    .line 75
    return-void
.end method


# virtual methods
.method public getAds()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->fromJsonArray(Lcom/google/gson/JsonArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentClickEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method
