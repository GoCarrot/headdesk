.class public final Lcom/upsight/android/analytics/internal/DataStoreRecord;
.super Ljava/lang/Object;
.source "DataStoreRecord.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.datastore.record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    }
.end annotation


# instance fields
.field action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field campaignID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "campaign_id"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field identifiers:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "identifiers"
    .end annotation
.end field

.field messageID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_id"
    .end annotation
.end field

.field pastSessionTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "past_session_time"
    .end annotation
.end field

.field sessionID:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_id"
    .end annotation
.end field

.field sessionNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_num"
    .end annotation
.end field

.field source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field sourceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p2, "sessionID"    # Ljava/lang/Long;
    .param p3, "messageID"    # Ljava/lang/Integer;
    .param p4, "campaignID"    # Ljava/lang/Integer;
    .param p5, "sessionNumber"    # Ljava/lang/Integer;
    .param p6, "pastSessionTime"    # Ljava/lang/Long;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    .line 103
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionID:Ljava/lang/Long;

    .line 104
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->messageID:Ljava/lang/Integer;

    .line 105
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->campaignID:Ljava/lang/Integer;

    .line 106
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->source:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sourceType:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionNumber:Ljava/lang/Integer;

    .line 109
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->pastSessionTime:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .locals 9
    .param p0, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p1, "sessionID"    # Ljava/lang/Long;
    .param p2, "messageID"    # Ljava/lang/Integer;
    .param p3, "campaignID"    # Ljava/lang/Integer;
    .param p4, "sessionNumber"    # Ljava/lang/Integer;
    .param p5, "pastSessionTime"    # Ljava/lang/Long;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/upsight/android/analytics/internal/DataStoreRecord;-><init>(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .locals 8
    .param p0, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p1, "sessionID"    # Ljava/lang/Long;
    .param p2, "sessionNumber"    # Ljava/lang/Integer;
    .param p3, "pastSessionTime"    # Ljava/lang/Long;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "sourceType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 119
    .local v0, "that":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAction()Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    return-object v0
.end method

.method public getCampaignID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->campaignID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifiers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->identifiers:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->messageID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPastSessionTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->pastSessionTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionID:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIdentifiers(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifiers"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->identifiers:Ljava/lang/String;

    .line 167
    return-void
.end method
