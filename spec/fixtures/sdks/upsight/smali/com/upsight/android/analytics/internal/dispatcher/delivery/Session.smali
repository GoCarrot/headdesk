.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session$DefaultTypeAdapter;
    }
.end annotation


# static fields
.field private static final EVENTS:Ljava/lang/String; = "events"

.field private static final INSTALL_TS:Ljava/lang/String; = "install_ts"

.field private static final MSG_CAMPAIGN_ID:Ljava/lang/String; = "msg_campaign_id"

.field private static final MSG_ID:Ljava/lang/String; = "msg_id"

.field private static final PAST_SESSION_TIME:Ljava/lang/String; = "past_session_time"

.field private static final SESSION_NUM:Ljava/lang/String; = "session_num"

.field private static final SESSION_START:Ljava/lang/String; = "session_start"


# instance fields
.field private mEvents:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation
.end field

.field private mInstallTs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "install_ts"
    .end annotation
.end field

.field private mMsgCampaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_campaign_id"
    .end annotation
.end field

.field private mMsgId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_id"
    .end annotation
.end field

.field private mPastSessionTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "past_session_time"
    .end annotation
.end field

.field private mSessionNum:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_num"
    .end annotation
.end field

.field private mSessionStart:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_start"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;J)V
    .locals 2
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "installTs"    # J

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Lcom/google/gson/JsonArray;

    .line 109
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionID()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionStart:Ljava/lang/Long;

    .line 110
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mInstallTs:Ljava/lang/Long;

    .line 111
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getMessageID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgId:Ljava/lang/Integer;

    .line 112
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getCampaignID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgCampaignId:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getPastSessionTime()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mPastSessionTime:Ljava/lang/Long;

    .line 114
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSessionNumber()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionNum:Ljava/lang/Integer;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionNum:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionStart:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mPastSessionTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mInstallTs:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Lcom/google/gson/JsonArray;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Lcom/google/gson/JsonArray;

    return-object v0
.end method


# virtual methods
.method addEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/google/gson/JsonParser;)V
    .locals 4
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "jsonParser"    # Lcom/google/gson/JsonParser;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "eventString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 124
    .local v0, "event":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 128
    .end local v0    # "event":Lcom/google/gson/JsonElement;
    :cond_0
    return-void
.end method
