const ON = 'on'
const OFF = 'off'

chrome.runtime.onInstalled.addListener(() => chrome.action.setBadgeText({ text: OFF }))

function setSchema(toMpv) {
  const prev = toMpv ? 'https' : 'mpv'
  const next = toMpv ? 'mpv' : 'https'
  document.querySelectorAll('[href$=".mp4" i], [href$=".mkv" i]').forEach((link) => {
    const url = new URL(link.href, location)
    link.href = url.href.replace(prev, next)
  })
}

chrome.action.onClicked.addListener(async (tab) => {
  const prevState = await chrome.action.getBadgeText({ tabId: tab.id })
  const nextState = prevState === ON ? OFF : ON

  await chrome.action.setBadgeText({
    tabId: tab.id,
    text: nextState,
  })

  chrome.scripting.executeScript({
    target: { tabId: tab.id },
    func: setSchema,
    args: [nextState === ON],
  })
})
