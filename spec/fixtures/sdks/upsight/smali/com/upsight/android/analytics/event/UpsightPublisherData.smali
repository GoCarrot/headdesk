.class public Lcom/upsight/android/analytics/event/UpsightPublisherData;
.super Ljava/lang/Object;
.source "UpsightPublisherData.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;,
        Lcom/upsight/android/analytics/event/UpsightPublisherData$DefaultTypeAdapter;
    }
.end annotation


# instance fields
.field private final mDataMap:Lcom/google/gson/JsonObject;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->access$200(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Lcom/upsight/android/analytics/event/UpsightPublisherData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData;-><init>(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/google/gson/JsonObject;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 161
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 164
    check-cast v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .line 166
    .local v0, "eventData":Lcom/upsight/android/analytics/event/UpsightPublisherData;
    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    iget-object v4, v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightPublisherData;->mDataMap:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
