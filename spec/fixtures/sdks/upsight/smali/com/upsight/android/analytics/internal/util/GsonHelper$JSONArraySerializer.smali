.class public Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;
.super Ljava/lang/Object;
.source "GsonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/util/GsonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONArraySerializer"
.end annotation


# static fields
.field private static sJsonParser:Lcom/google/gson/JsonParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->sJsonParser:Lcom/google/gson/JsonParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonArray(Lcom/google/gson/JsonArray;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "arrayNode"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .local v1, "jsonArray":Lorg/json/JSONArray;
    move-object v0, v1

    .line 72
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .restart local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toJsonArray(Lorg/json/JSONArray;)Lcom/google/gson/JsonArray;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "arrayNode":Lcom/google/gson/JsonArray;
    :try_start_0
    sget-object v1, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->sJsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method
